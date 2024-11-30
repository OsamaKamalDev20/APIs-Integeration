import 'dart:convert';

import 'package:apis_demo/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PracticeFour extends StatefulWidget {
  const PracticeFour({super.key});

  @override
  State<PracticeFour> createState() => _PracticeFourState();
}

class _PracticeFourState extends State<PracticeFour> {
  var data;
  Future<void> getUserAPI() async {
    final response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));

    if (response.statusCode == 200) {
      data = jsonDecode(response.body.toString());
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Part 10: APIs Course"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getUserAPI(),
              builder: ((context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Card(
                        color: Color(0xff2F58CD),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              CustomWidget(
                                title: "Name:-",
                                value: data[index]['name'].toString(),
                              ),
                              CustomWidget(
                                title: "User Name:-",
                                value: data[index]['username'].toString(),
                              ),
                              CustomWidget(
                                title: "Email:-",
                                value: data[index]['email'].toString(),
                              ),
                              CustomWidget(
                                title: "Address:-",
                                value:
                                    data[index]['address']['street'].toString(),
                              ),
                              CustomWidget(
                                title: "House:-",
                                value:
                                    data[index]['address']['suite'].toString(),
                              ),
                              CustomWidget(
                                title: "City:-",
                                value:
                                    data[index]['address']['city'].toString(),
                              ),
                              CustomWidget(
                                title: "Phone:-",
                                value: data[index]['phone'].toString(),
                              ),
                              CustomWidget(
                                title: "Company:-",
                                value:
                                    data[index]['company']['name'].toString(),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }
              }),
            ),
          ),
        ],
      ),
    );
  }
}
