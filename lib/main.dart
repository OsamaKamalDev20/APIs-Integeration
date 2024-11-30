// import 'package:apis_demo/practice_2.dart';
// import 'package:apis_demo/practice_1.dart';
// import 'package:apis_demo/practice_3.dart';
// import 'package:apis_demo/practice_4.dart';
// import 'package:apis_demo/Dio_package/dio_home_screen.dart';
import 'package:apis_demo/apis_tutorial.dart';
// import 'package:apis_demo/e_commerce_app/screens/home_screen.dart';
// import 'package:apis_demo/practice_5.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          foregroundColor: Colors.white,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: APITutorials(),
    );
  }
}
