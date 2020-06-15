import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {

  final Function answerQuestion;
  final List<Map<String,Object>> questions;
  final int questionNumber;

  Quiz({@required this.answerQuestion,@required this.questions,@required this.questionNumber}); 

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
        Question(questions[questionNumber]['questionText']),
        ...(questions[questionNumber]['answer'] as List<String>).map((answer){
          return Answer(answerQuestion,answer);
        }).toList(),
      ],
     );
  }
}