import 'dart:convert';

import 'package:apis_demo/models/comments_model.dart';
import 'package:apis_demo/widgets/custom_comments_widgets.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PracticeFive extends StatefulWidget {
  const PracticeFive({super.key});

  @override
  State<PracticeFive> createState() => _PracticeFiveState();
}

class _PracticeFiveState extends State<PracticeFive> {
  List<CommentsModel> commentsList = [];

  Future<List<CommentsModel>> getCommentsAPI() async {
    final response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/comments"));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> i in data) {
        // print(
        //   i['name']
        // );
        commentsList.add(CommentsModel.fromJson(i));
      }
      return commentsList;
    } else {
      return commentsList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Part 11: APIs Course"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getCommentsAPI(),
              builder: (context, AsyncSnapshot<List<CommentsModel>> snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return ListView.builder(
                    itemCount: commentsList.length,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: EdgeInsets.all(10),
                        child: Material(
                          elevation: 4,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomComments(
                                  title: "Name",
                                  value: snapshot.data![index].name.toString(),
                                ),
                                SizedBox(height: 10),
                                CustomComments(
                                  title: "Email",
                                  value: snapshot.data![index].email.toString(),
                                ),
                                SizedBox(height: 10),
                                CustomComments(
                                  title: "Comments",
                                  value: snapshot.data![index].body.toString(),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
