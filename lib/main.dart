import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionNumber=0;

  void _answerquestion(){
    setState(() {
      _questionNumber++;
    });
    print("i am the answer : " + _questionNumber.toString());
  }

  @override
  Widget build(BuildContext context) {
    var questions=[
      "what's is your favourite color",
      "what's is your favourite game",
      "what's is your favourite class",
      "what's is your favourite deodrent",
    ];
    return MaterialApp(
      home:Scaffold(
      appBar: AppBar(title:Text('Quiz App')),
      body: Column(children: <Widget>[
        Question(questions[_questionNumber]),
        Answer(_answerquestion),
        Answer(_answerquestion),
        Answer(_answerquestion),
      ],
     ),
    ),
    );
  }
}
