import 'package:apis_demo/api_courses.dart';
import 'package:flutter/material.dart';

class APITutorials extends StatelessWidget {
  const APITutorials({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("APIs Tutorials"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Image.network(
                  "https://user-images.githubusercontent.com/47206155/156525375-e7bf5e18-1fba-49a1-86aa-bfa64f91d5e4.png",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "I have practiced full course on API integration 🚀 in Flutter from scratch to advance level following the tutorial of Asif Taj 🇵🇰 Youtube Channel (The Tech Brothers)❤️ and Nabin Paudyal 🇳🇵 Youtube Channel (WTF Code)❤️. This isn’t just practice but it’s a learning journey! 🚀 It will walk me through real-world scenarios, help me to avoid common mistakes, and answer the burning questions in my mind, that might have dive into the world of API integration. 🚀",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  height: 1.8,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => APICourses(),
                    ),
                  );
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.blue,
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
    );
  }
}
