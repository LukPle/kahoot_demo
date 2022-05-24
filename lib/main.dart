import 'package:flutter/material.dart';
import 'package:kahoot_demo/screens/home.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    precacheImage(const AssetImage("assets/background.jpg"), context);

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        secondaryHeaderColor: Colors.indigo,
        scaffoldBackgroundColor: const Color.fromARGB(255, 245, 245, 245)
      ),
      home: HomeScreen(),
    );
  }
}