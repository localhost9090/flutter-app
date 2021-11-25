import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final Function(int) answerQuestion;
  final List<Map<String, Object>> questions;
  final int questionIdx;

  const Quiz(
      {required this.answerQuestion,
      required this.questions,
      required this.questionIdx});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIdx]['questionText'] as String),
        ...(questions[questionIdx]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score'] as int),
              answer['text'] as String);
        }).toList(),
      ],
    );
  }
}
