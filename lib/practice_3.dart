import 'dart:convert';
import 'package:apis_demo/models/user_model.dart';
import 'package:apis_demo/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PracticeThree extends StatefulWidget {
  const PracticeThree({super.key});

  @override
  State<PracticeThree> createState() => _PracticeThreeState();
}

class _PracticeThreeState extends State<PracticeThree> {
  List<UserModel> userList = [];

  Future<List<UserModel>> getUserApi() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> i in data) {
        // print(i['name'], );
        userList.add(UserModel.fromJson(i));
      }
      return userList;
    } else {
      return userList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Part 9: APIs Course"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getUserApi(),
              builder: (context, AsyncSnapshot<List<UserModel>> snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return ListView.builder(
                    // itemCount: 10,
                    itemCount: userList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                          color: Color(0XFFD10363),
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                CustomWidget(
                                  title: "Name :-",
                                  value: snapshot.data![index].name.toString(),
                                ),
                                CustomWidget(
                                  title: "User Name:-",
                                  value:
                                      snapshot.data![index].username.toString(),
                                ),
                                CustomWidget(
                                  title: "Email:-",
                                  value: snapshot.data![index].email.toString(),
                                ),
                                CustomWidget(
                                  title: "Address:-",
                                  value: snapshot.data![index].address!.city
                                      .toString(),
                                ),
                                CustomWidget(
                                  title: "Address Street:-",
                                  value: snapshot.data![index].address!.street
                                      .toString(),
                                ),
                                CustomWidget(
                                  title: "Phone:-",
                                  value: snapshot.data![index].phone.toString(),
                                ),
                                CustomWidget(
                                  title: "Company:-",
                                  value: snapshot.data![index].company!.name
                                      .toString(),
                                ),
                                CustomWidget(
                                  title: "Website:-",
                                  value:
                                      snapshot.data![index].website.toString(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
