import 'dart:ffi';

import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final VoidCallback answerQuestion;
  final Map<String, Object> questions;
  final int questionIdx;

  const Quiz(this.answerQuestion, this.questions, this.questionIdx);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Question(questions[questionIdx]['questionText'] as String),
        // ...(questions[questionIdx]['answers'] as List<String>).map((answer) {
        //   return Answer(answerQuestion, answer);
        // }).toList(),
      ],
    );
  }
}
