import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';

import './question.dart';
import './answer.dart';
import './sucessful.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
      final _questions = const [
      {
        'questionText':'Whats your favourite color?',
        'answer':['black','white','green','yellow']
      },
      {
        'questionText':'who is shaktiman?',
        'answer':['ganga','dhar','bazi','rao']
      },
      {
        'questionText':'Whats your name?',
        'answer':['man','yo','green','yellow']
      },
      {
        'questionText':'Whats your bezti color?',
        'answer':['kara','white','green','yellow']
      },
    ];

  var _questionNumber=0;

  void _answerquestion(){
    if(_questionNumber>_questions.length){
      print("I Have More Questions");
    }
    setState(() {
      _questionNumber++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home:Scaffold(
      appBar: AppBar(title:Text('Quiz App')),
      body: _questionNumber<_questions.length 
         ?  
          Quiz(
          answerQuestion:_answerquestion,
          questions:_questions,
          questionNumber:_questionNumber
          ) 
         : 
          Sucess(),
    ),
    );
  }
}
