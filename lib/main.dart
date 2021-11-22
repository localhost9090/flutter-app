import 'package:flutter/material.dart';
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
  void _answerQuestion() {
    setState(() {
      _questionIdx = _questionIdx + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Red', 'Green', 'Blue']
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Dog', 'Cat', 'Pig']
      },
      {
        'questionText': 'What\'s your favorite Sport?',
        'answers': ['Football', 'Volleyball', 'Basketball']
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FirstApp'),
          centerTitle: true,
        ),
        body: _questionIdx < _questions.length
            ? Quiz(_answerQuestion, _questions[_questionIdx], _questionIdx)
            : Center(
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _questionIdx = 0;
                      });
                    },
                    child: const Text('RESET')),
              ),
      ),
    );
  }
}
