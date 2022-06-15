import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // final VoidCallback selectHandler;
  final void Function() selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler,
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
        ),
        child: Text(answerText),
      ),
    );
  }
}
