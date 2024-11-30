import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void signup(String email, password) async {
    try {
      Response response = await post(
          Uri.parse('https://reqres.in/api/register'),
          body: {'email': email, 'password': password});

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print(data);
        print('Account Created Successfully');
      } else {
        print('failed to create account');
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post API: Sign Up API"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                "https://user-images.githubusercontent.com/47206155/156525375-e7bf5e18-1fba-49a1-86aa-bfa64f91d5e4.png",
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: emailController,
                      cursorColor: Colors.grey.shade300,
                      decoration: InputDecoration(
                        hintText: "Enter your email",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            width: 1.5,
                            color: Colors.grey.shade300,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            width: 1.5,
                            color: Colors.grey.shade300,
                          ),
                        ),
                        suffixIcon: Icon(Icons.email_rounded, size: 30),
                        suffixIconColor: Colors.grey.shade300,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: passwordController,
                      cursorColor: Colors.grey.shade300,
                      decoration: InputDecoration(
                        hintText: "Enter your password",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            width: 1.5,
                            color: Colors.grey.shade300,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            width: 1.5,
                            color: Colors.grey.shade300,
                          ),
                        ),
                        suffixIcon:
                            Icon(Icons.remove_red_eye_rounded, size: 30),
                        suffixIconColor: Colors.grey.shade300,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    GestureDetector(
                      onTap: () {
                        signup(emailController.text.toString(),
                            passwordController.text.toString());
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.deepOrange,
                          ),
                          child: Center(
                            child: Text(
                              "Sign Up",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
