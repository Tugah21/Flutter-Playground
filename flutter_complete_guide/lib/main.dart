import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';

import './quiz.dart';
import './result.dart';

//void main() {
//runApp(MyApp());}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 5},
        {'text': 'Red', 'score': 7},
        {'text': 'Green', 'score': 9},
        {'text': 'Blue', 'score': 15}
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 5},
        {'text': 'Duck', 'score': 7},
        {'text': 'Goat', 'score': 9},
        {'text': 'Dog', 'score': 15}
      ],
    },
    {
      'questionText': 'Who\'s your favourite family member?',
      'answers': [
        {'text': 'Sissy', 'score': 7},
        {'text': 'Brosky', 'score': 7},
        {'text': 'Mum', 'score': 9},
        {'text': 'Dad', 'score': 9}
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    //_totalScore = _totalScore + score;
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    } else {
      print('No more questions!!!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
