import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answer;
  const Answer(this.selectHandler, this.answer, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        child: Text(answer),
        onPressed: selectHandler,
      ),
    );
  }
}
