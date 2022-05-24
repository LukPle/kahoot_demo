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