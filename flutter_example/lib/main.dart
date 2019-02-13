import 'package:flutter/material.dart';
import 'package:flutter_example/pages/home/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LoadMore...',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
        backgroundColor: Colors.white,
        canvasColor: Colors.transparent,
      ),
      home: Home(),
    );
  }
}
