import 'package:flutter/material.dart';
import 'package:new_one/Home_screen.dart';
import 'package:new_one/attendence_page.dart';
import 'package:new_one/numberVerify.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:home_screen(),

      );
    }
}
