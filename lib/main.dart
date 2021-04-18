import 'package:flutter/material.dart';
import './first_screen.dart';
import './second_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: FirstScreen(),
      routes: {
        SecondScreen.routeName: (ctx) => SecondScreen(),
      },
    );
  }
}
