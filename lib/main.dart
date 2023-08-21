import 'package:flutter/material.dart';
import 'package:nany_demo/view/first_page.dart';
import 'package:nany_demo/view/Login.dart';
import 'package:nany_demo/view/otp.dart';
import 'package:nany_demo/view/otp2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
//      home: Home(),
//      home: login(),
//      home: Otpp(),
      home: Otp(),
    );
  }
}
