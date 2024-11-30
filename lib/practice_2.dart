import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PracticeTwo extends StatefulWidget {
  const PracticeTwo({Key? key}) : super(key: key);

  @override
  _PracticeTwoState createState() => _PracticeTwoState();
}

class _PracticeTwoState extends State<PracticeTwo> {
  List<Photos> photosList = [];

  Future<List<Photos>> getPhotos() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    var data = jsonDecode(response.body.toString());

    // print(data);
    if (response.statusCode == 200) {
      for (Map i in data) {
        Photos photos = Photos(title: i['title'], url: i['url'], id: i['id']);
        photosList.add(photos);
      }
      return photosList;
    } else {
      return photosList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Part 8: APIs Course"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getPhotos(),
              builder: (context, AsyncSnapshot<List<Photos>> snapshot) {
                return ListView.builder(
                  itemCount: photosList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          snapshot.data![index].url.toString(),
                        ),
                      ),
                      title: Text(
                        'Title: ' + snapshot.data![index].id.toString(),
                        style: TextStyle(
                          // fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        snapshot.data![index].title.toString(),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Photos {
  String title, url;
  int id;
  Photos({required this.title, required this.url, required this.id});
}
