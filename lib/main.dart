import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
// 	runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const <Map<String, Object>>[
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {
          'text': 'Black',
          'score': 15,
        },
        {
          'text': 'White',
          'score': 10,
        },
        {
          'text': 'Red',
          'score': 20,
        },
        {
          'text': 'Pink',
          'score': 25,
        },
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {
          'text': 'Dog',
          'score': 10,
        },
        {
          'text': 'Cat',
          'score': 15,
        },
        {
          'text': 'Pig',
          'score': 20,
        },
      ],
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answers': [
        {
          'text': 'Pizza',
          'score': 15,
        },
        {
          'text': 'Cake',
          'score': 20,
        },
      ],
    },
  ];

  void _answerQuestion(score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
      _totalScore += score;
    });
  }

  void _restartTest() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
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
                questionText: _questions[_questionIndex]['questionText'],
                answers: _questions[_questionIndex]['answers'],
                answerFunction: _answerQuestion,
              )
            : Result(
                restartFunction: _restartTest,
                finalScore: _totalScore,
              ),
      ),
    );
  }
}
