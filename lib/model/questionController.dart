import 'dart:math';

import 'package:kahoot_demo/data/questions.dart';
import 'package:kahoot_demo/model/quizmodel.dart';

List<String> getRandomAnswers(String correctAnswer, List<String> wrongAnswers) {

  List<String> allAnswers = <String>[];
  allAnswers.add(correctAnswer);
  allAnswers.addAll(wrongAnswers);
  allAnswers.shuffle();

  return allAnswers;
}

int getCorrectAnswerIndex(List<String> answers, String correctAnswer) {

  for(int index = 0; index < answers.length; index++) {

    if(answers[index].compareTo(correctAnswer) == 0) {

      return index;
    }
  }

  return -1;
}

List<int> getRandomQuestionIndex() {

  List<int> selection = List<int>.generate(15, (index) => index);
  selection.shuffle();

  return selection;
}