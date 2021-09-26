import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {

  final String _buttonText;
  // final Function _buttonAction;
  final VoidCallback _buttonAction;

  AnswerButton(
    this._buttonText,
    this._buttonAction,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.teal[200],
        textColor: Colors.white,
        child: Text(_buttonText),
        onPressed: _buttonAction,
      ),
    );
  }
}
