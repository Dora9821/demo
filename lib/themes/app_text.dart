// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AppText {
  final TextStyle appbarText;
  final TextStyle bodyText;
  final TextStyle buttonText;

  AppText._(
    this.appbarText,
    this.bodyText,
    this.buttonText,
  );

  factory AppText.blue() => AppText._(
        const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Color.fromARGB(255, 26, 20, 198),
        ),
        TextStyle(
          fontSize: 16,
          color: Colors.black,
        ),
        TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),
      );

  factory AppText.green() => AppText._(
        const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.black,
        ),
        TextStyle(
          fontSize: 21,
          color: Colors.black,
        ),
        TextStyle(
          fontSize: 22,
          color: Colors.black,
        ),
      );
}
