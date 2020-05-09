import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  String get resultPhrase {
    var resultText;

    if (resultScore <= 5) {
      resultText += 'You good';
    } else if (resultScore <= 10) {
      resultText += 'You Fuck goods';
    } else {
      resultText = 'a7a';
    }

    return resultText;
  }

  Function _resetQuizFun;

  Result(this.resultScore, this._resetQuizFun);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            'You dit it, your score is =  $resultScore = ' + resultPhrase,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 36),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Reset quiz',style: TextStyle(color: Colors.blue),),
            onPressed: _resetQuizFun,
          )
        ],
      ),
    );
  }
}
