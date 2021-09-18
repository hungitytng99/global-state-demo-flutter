import 'package:block_design/Services/Data/GlobalState.dart';
import 'package:block_design/Views/MyHomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final globalState = new GlobalState();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Block Design',
      home: MyHomePage(),
    );
  }
}

