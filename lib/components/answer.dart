import 'package:flutter/material.dart';

Widget buildAnswerCard(BuildContext context, String text, bool? isCorrectAnswer) {

  return Container(
    height: MediaQuery.of(context).size.height * 0.1,
    width: MediaQuery.of(context).size.width,
    child: Card(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
      elevation: 2,
      color: (isCorrectAnswer == null) ? Colors.white : (isCorrectAnswer) ? Colors.green : Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Text(text,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
              color: (isCorrectAnswer == null) ? Colors.black : Colors.white),
            textAlign: TextAlign.center)
        )
      )
    )
  );
}