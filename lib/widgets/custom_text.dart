// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String text;
  CustomText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        color: Colors.black,
      ),
    );
  }
}
