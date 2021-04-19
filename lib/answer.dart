import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function buttonAction;
  final String answerText;

  Answer(this.buttonAction, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.green)),
              child: Text(answerText),
              onPressed: buttonAction,
            ),
      
    );
  }
}