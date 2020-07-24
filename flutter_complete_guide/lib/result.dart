import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 16) {
      resultText = 'Not bad! Re-evaluate your taste mate!';
    } else if (resultScore <= 18) {
      resultText = 'Good work! Can do better than that mate!';
    } else if (resultScore <= 22) {
      resultText = 'Very good! Wise decisions there mate!';
    } else {
      resultText = 'Excellent taste you\'ve got there mate!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
