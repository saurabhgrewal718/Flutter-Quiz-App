import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerquestion(){
    print("i am the answer");
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
        Text("this is my text"),
        RaisedButton(child: Text("Answer 1"),onPressed: answerquestion),
        RaisedButton(child: Text("Answer 2"),onPressed: ()=> print("i am the question 2")),
        RaisedButton(child: Text("Answer 3"),onPressed: ()=> print("i am the question 3")),
      ],
     ),
    ),
    );
  }
}
