import 'package:flutter/material.dart';
import 'package:kahoot_demo/screens/home.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key, required this.score}) : super(key: key);

  final int score;

  String writeMessage() {

    String phrase;

    if(score < 5) {

      phrase = "Try again!";
    }
    else if(score < 8) {

      phrase = "Well done!";
    }
    else {

      phrase = "Congratulations!";
    }

    return "You finished the Quiz with $score of 10 correct Answers. $phrase";
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
          child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(writeMessage(),
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center),
                    const SizedBox(height: 36),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size.fromHeight(45),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                        },
                        child: const Text("Return to Home",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500))
                    )
                  ]
              )
          )
      ),
    );
  }
}