// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetHandler;
  const Result(this.totalScore, this.resetHandler, {Key? key})
      : super(key: key);

  String get resultPhrase {
    String resultText;
    if (totalScore <= 8) {
      resultText = 'Awsome';
    } else if (totalScore <= 12) {
      resultText = 'Likeable';
    } else if (totalScore <= 16) {
      resultText = 'Strange';
    } else {
      resultText = 'Bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase + ' ' + totalScore.toString(),
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
              onPressed: resetHandler, child: const Text('Restart Quiz'))
        ],
      ),
    );
  }
}
