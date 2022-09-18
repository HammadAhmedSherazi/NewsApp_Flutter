import 'package:flutter/material.dart';
import 'package:newsapp/Screens/Detail.dart';
import 'package:newsapp/Screens/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}