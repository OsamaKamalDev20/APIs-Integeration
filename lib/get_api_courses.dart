import 'package:apis_demo/Dio_package/dio_home_screen.dart';
import 'package:apis_demo/e_commerce_app/screens/home_screen.dart';
import 'package:apis_demo/practice_1.dart';
import 'package:apis_demo/practice_2.dart';
import 'package:apis_demo/practice_3.dart';
import 'package:apis_demo/practice_4.dart';
import 'package:apis_demo/practice_5.dart';
import 'package:flutter/material.dart';

class GetAPICourse extends StatelessWidget {
  const GetAPICourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GET APIs Courses"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(.2),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Icon(
                    Icons.api,
                    color: Colors.blue,
                    size: 34,
                  ),
                ),
                title: Text(
                  "Example 1:-",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Example 1:- Where we create model using Plugin.",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PracticeOne(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                  ),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(.2),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Icon(
                    Icons.api,
                    color: Colors.red,
                    size: 34,
                  ),
                ),
                title: Text(
                  "Example 2:-",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Example 2:- Where we our own custom model.",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PracticeTwo(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                  ),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.amber.withOpacity(.2),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Icon(
                    Icons.api,
                    color: Colors.amber,
                    size: 34,
                  ),
                ),
                title: Text(
                  "Example 3:-",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Example 3:- Wit complex JSON but we used plugins to create model and parse JSON data.",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PracticeThree(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                  ),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(.2),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Icon(
                    Icons.api,
                    color: Colors.green,
                    size: 34,
                  ),
                ),
                title: Text(
                  "Example 4:-",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Example 4:- Where we don't model to fetch data from server and show in our API. Then we will use this method to fetch API.",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PracticeFour(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                  ),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent.withOpacity(.2),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Icon(
                    Icons.api,
                    color: Colors.pinkAccent,
                    size: 34,
                  ),
                ),
                title: Text(
                  "Example 5:-",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Example 5:- How to parse very complex JSON and show in API.",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PracticeFive(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                  ),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.teal.withOpacity(.2),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Icon(
                    Icons.api,
                    color: Colors.teal,
                    size: 34,
                  ),
                ),
                title: Text(
                  "E-Commerce App From Get API",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Where we create E Commerce Model using plugin to fetch products.",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ECommerceHomeScreen(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                  ),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.cyan.withOpacity(.2),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Icon(
                    Icons.api,
                    color: Colors.cyan,
                    size: 34,
                  ),
                ),
                title: Text(
                  "Fetch Data using DIO Package",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Where we fetch data using DIO Package.",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DioHomeScreen(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
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
