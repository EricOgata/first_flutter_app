import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final String questionText;
  final List<Map<String, Object>> answers;
  final Function answerFunction;

  Quiz({
    @required this.questionText,
    @required this.answers,
    @required this.answerFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionText,
        ),
        ...(answers as List<Map<String, Object>>).map((answer) {
          print(answer);
          return AnswerButton(answer['text'], () => answerFunction(answer['score']));
        }).toList(),
      ],
    );
  }
}
