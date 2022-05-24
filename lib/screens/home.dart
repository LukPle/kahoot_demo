import 'package:flutter/material.dart';
import 'package:kahoot_demo/screens/quiz.dart';

class HomeScreen extends StatefulWidget {

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App"),
          automaticallyImplyLeading: false
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("The Quiz contains 10 Question about sustainability",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center),
              const SizedBox(height: 36),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(45),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                  onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => QuizScreen()));
                  },
                  child: const Text("Start the Quiz",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500))
              )
            ]
          )
        )
      )
    );
  }
}