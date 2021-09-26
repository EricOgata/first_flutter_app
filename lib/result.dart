import 'package:flutter/material.dart';

import './answer.dart';

class Result extends StatelessWidget {
  final Function restartFunction;
  final int finalScore;

  Result({
    @required this.restartFunction,
    @required this.finalScore,
  });

  String get resultPhrase {
    String resultText = 'You did it!';
    if (finalScore <= 35) {
      resultText = 'You\'re awesome and innocent!';
    } else if (finalScore <= 45) {
      resultText = 'You\'re Lovable!';
    } else if (finalScore <= 60) {
      resultText = 'You\'re Cool';
    } else {
      resultText = 'You\'re awesome.';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          resultPhrase,
          textAlign: TextAlign.center, // Center Text
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Colors.redAccent[100],
          ),
        ),
        Text('Final Score: ' + finalScore.toString()),
        AnswerButton('Reset', this.restartFunction),
      ],
    );
  }
}
