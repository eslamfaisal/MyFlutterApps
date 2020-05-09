import 'package:flutter/material.dart';
import 'file:///C:/Users/CRAZY/AndroidStudioProjects/FlutterProjects/quickstart-android/quize_app/lib/quiz_app/result.dart';

import 'quiz.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  final _questions = const [
    {
      'questuionText': "What\'s your favorite color",
      'answers': [
        {'text': 'Red', 'score': 5},
        {'text': 'Yellow', 'score': 10},
      ]
    },
    {
      'questuionText': "What\'s your favorite Person",
      'answers': [
        {'text': 'Mother', 'score': 15},
        {'text': 'Borther', 'score': 19}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });

    print(_questionIndex);
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    if (_questionIndex < _questions.length) {}
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _questionIndex < _questions.length
            ? Quiz(_questions, _answerQuestion, _questionIndex)
            : Result(_totalScore,_resetQuiz),
        appBar: AppBar(
          title: Text('اول رصاصة رحمة'),centerTitle: true,
        ),
      ),
    );
  }
}
