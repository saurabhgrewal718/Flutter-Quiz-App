import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  
  final Function selecthandler;
  Answer(this.selecthandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text("Button"),
        color: Colors.orange,
        onPressed: selecthandler,
      ),
    );
  }
}