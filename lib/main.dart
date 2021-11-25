import 'package:flutter/material.dart';
import 'package:test_flutter_app/result.dart';
import './quiz.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIdx = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIdx = _questionIdx + 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIdx = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          {'text': 'Red', 'score': 3},
          {'text': 'Blue', 'score': 5},
          {'text': 'Green', 'score': 7}
        ]
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [
          {'text': 'Dog', 'score': 6},
          {'text': 'Cat', 'score': 3},
          {'text': 'Pig', 'score': 9}
        ]
      },
      {
        'questionText': 'What\'s your favorite Sport?',
        'answers': [
          {'text': 'Football', 'score': 7},
          {'text': 'Basketball', 'score': 3},
          {'text': 'Volleyball', 'score': 2}
        ]
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FirstApp'),
          centerTitle: true,
        ),
        body: _questionIdx < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIdx: _questionIdx,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
