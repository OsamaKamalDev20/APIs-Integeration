import 'dart:convert';
import 'package:apis_demo/models/posts_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PracticeOne extends StatefulWidget {
  const PracticeOne({super.key});

  @override
  State<PracticeOne> createState() => _PracticeOneState();
}

class _PracticeOneState extends State<PracticeOne> {
  List<PostsModel> postList = [];
  Future<List<PostsModel>> getPostApi() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      postList.clear();
      for (Map<String, dynamic> i in data) {
        postList.add(PostsModel.fromJson(i));
      }
      return postList;
    } else {
      return postList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Part 7: APIs Course"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                future: getPostApi(),
                builder: ((context, snapshot) {
                  if (!snapshot.hasData) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return ListView.builder(
                      itemCount: postList.length,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            elevation: 5,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Title',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(postList[index].title.toString()),
                                  SizedBox(height: 10),
                                  Text(
                                    'Description',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 3),
                                  Text(
                                    postList[index].body.toString(),
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                    );
                  }
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
