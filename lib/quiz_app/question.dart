import 'dart:ui';

import 'package:flutter/material.dart';

class Question extends StatelessWidget {

  String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(bottom: 16,top: 16),
        width: double.infinity,
        child: Text(questionText, style: TextStyle(fontSize: 24), textAlign: TextAlign.center));
  }
}
