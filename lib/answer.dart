import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  
  final Function selecthandler;
  final String answertext;

  Answer(this.selecthandler,this.answertext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answertext),
        color: Colors.orange,
        onPressed: selecthandler,
      ),
    );
  }
}