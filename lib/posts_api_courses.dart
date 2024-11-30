import 'package:apis_demo/login.dart';
import 'package:apis_demo/sign_up.dart';
import 'package:flutter/material.dart';

class PostAPICourse extends StatelessWidget {
  const PostAPICourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post APIs Courses"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10),
            ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.lightBlue.withOpacity(.2),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Icon(
                  Icons.api,
                  color: Colors.lightBlue,
                  size: 34,
                ),
              ),
              title: Text(
                "Login API:-",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Example 1:- Login API integration using Open Source API.",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
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
                  color: Colors.deepOrange.withOpacity(.2),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Icon(
                  Icons.api,
                  color: Colors.deepOrange,
                  size: 34,
                ),
              ),
              title: Text(
                "Sign Up API:-",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Example 2:- Sign Up API integration using Open Source API.",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpScreen(),
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
    );
  }
}
