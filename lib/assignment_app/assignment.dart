// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';

void main() {
  runApp(AssignmentApp());
}

class AssignmentApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AssignmentState();
  }
}

class _AssignmentState extends State<AssignmentApp> {
  String _anotherString = 'ond string';

  void changeString() {
    setState(() {
      _anotherString = 'New string';
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Assignment App'),
            centerTitle: true,
          ),
          body: Column(
            children: <Widget>[
              Text(_anotherString),
              FlatButton(
                child: Text('Change string '),
                onPressed: changeString,
              )
            ],
          )),
    );
  }
}
