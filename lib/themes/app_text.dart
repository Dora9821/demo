// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AppText {
  final TextStyle appbarText;
  final TextStyle buttonText;

  AppText._(
    this.appbarText,
    this.buttonText,
  );

  factory AppText.blue() => AppText._(
        const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Color.fromARGB(255, 26, 20, 198),
        ),
        const TextStyle(
          fontSize: 18,
          color: Color.fromARGB(255, 21, 1, 109),
        ),
      );

  factory AppText.green() => AppText._(
        const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.black,
        ),
        const TextStyle(
          fontSize: 18,
          color: Color.fromARGB(255, 6, 114, 202),
        ),
      );
}
