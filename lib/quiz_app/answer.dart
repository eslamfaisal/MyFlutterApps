import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHanler;
  String answer;

  Answer(this.selectHanler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        key: Key("eslam_btn"),
        child: Text(
          answer,
          style: TextStyle(
              color: Colors.white
          ),
        ),
        onPressed: selectHanler,
      ),
    );
  }
}
