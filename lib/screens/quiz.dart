import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kahoot_demo/data/questions.dart';
import 'package:kahoot_demo/model/questionController.dart';
import 'package:kahoot_demo/model/quizmodel.dart';
import 'package:kahoot_demo/screens/result.dart';
import 'package:progresso/progresso.dart';

import '../components/answer.dart';

class QuizScreen extends StatefulWidget {

  @override
  QuizScreenState createState() => QuizScreenState();
}

class QuizScreenState extends State<QuizScreen> {

  int score = 0;
  int numbQuestion = 0;
  int numbAllQuestions = 10;
  late QuizModel currentQuestion;
  late List<String> answers;
  List<bool?> answerValidation = [null, null, null, null];

  @override
  void initState() {

    loadNewQuestion();
    super.initState();
  }

  void loadNewQuestion() {

    setState(() {

      if(numbQuestion < numbAllQuestions) {

        currentQuestion = loadQuestion(numbQuestion);
        answers = getRandomAnswers(currentQuestion.correctAnswer, currentQuestion.wrongAnswers);
        numbQuestion++;
        answerValidation = [null, null, null, null];
      }
      else {

        Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen(score: score)));
      }
    });
  }

  void validateAnswer(int userAnswerIndex) async {

    setState(() {

      int correctAnswerIndex = getCorrectAnswerIndex(answers, currentQuestion.correctAnswer);
      answerValidation[correctAnswerIndex] = true;

      if(userAnswerIndex == correctAnswerIndex) {

        score++;
      }
      else {

        answerValidation[userAnswerIndex] = false;
      }
    });

    await Future.delayed(const Duration(seconds: 3));
    loadNewQuestion();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background.jpg"),
              fit: BoxFit.fill)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2.75, sigmaY: 2.75),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  Text(currentQuestion.question,
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                      textAlign: TextAlign.center),
                  const Spacer(),
                  Text("Frage $numbQuestion von $numbAllQuestions",
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  const SizedBox(height: 8),
                  Progresso(
                    progress: numbQuestion / numbAllQuestions,
                    backgroundStrokeCap: StrokeCap.round,
                    progressStrokeCap: StrokeCap.round,
                    backgroundColor: Colors.white,
                    progressColor: Colors.black,
                  ),
                  const Spacer(),
                  GestureDetector(
                      onTap: () {
                        validateAnswer(0);
                      },
                      child: buildAnswerCard(context, answers[0], answerValidation[0])),
                  const SizedBox(height: 8),
                  GestureDetector(
                      onTap: () {
                        validateAnswer(1);
                      },
                      child: buildAnswerCard(context, answers[1], answerValidation[1])),
                  const SizedBox(height: 8),
                  GestureDetector(
                      onTap: () {
                        validateAnswer(2);
                      },
                      child: buildAnswerCard(context, answers[2], answerValidation[2])),
                  const SizedBox(height: 8),
                  GestureDetector(
                      onTap: () {
                        validateAnswer(3);
                      },
                      child: buildAnswerCard(context, answers[3], answerValidation[3])),
                  const Spacer(),
                ],
              ),
            ),
          ),
        )
      )
    );
  }
}