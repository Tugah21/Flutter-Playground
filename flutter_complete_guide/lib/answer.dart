import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function optionHandler;
  final String answerText;

  Answers(this.optionHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: optionHandler,
      ),
    );
  }
}
