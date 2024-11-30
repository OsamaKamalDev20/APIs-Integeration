import 'package:apis_demo/get_api_courses.dart';
import 'package:apis_demo/posts_api_courses.dart';
import 'package:apis_demo/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class APICourses extends StatelessWidget {
  const APICourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("APIs Courses"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Material(
                elevation: 6,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Get APIs Tutorial",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.red,
                            decorationThickness: 2,
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      CustomText(
                          text: "Used to retrieve data from the server."),
                      CustomText(
                          text:
                              "Requests data without modifying the server state."),
                      CustomText(
                          text:
                              "Data is typically passed in the URL as query parameters."),
                      CustomText(
                          text:
                              "Repeating the same request will not change the server's state."),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => GetAPICourse(),
                            ),
                          );
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.green,
                          ),
                          child: Center(
                            child: Text(
                              "Get Started",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Material(
                elevation: 6,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Posts APIs Tutorial",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.blue,
                            decorationThickness: 2,
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      CustomText(
                          text:
                              "Used to send data to the server to create or update resources."),
                      CustomText(
                          text: "Sends data in the body of the request."),
                      CustomText(
                          text:
                              "Repeating the same request can result in different outcomes (e.g., creating multiple entries)."),
                      CustomText(
                          text:
                              "Often used for actions that modify server data."),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PostAPICourse(),
                            ),
                          );
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.green,
                          ),
                          child: Center(
                            child: Text(
                              "Get Started",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
