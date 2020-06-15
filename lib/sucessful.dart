import 'package:flutter/material.dart';

class Sucess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(children: <Widget>[
          SizedBox(height:100),
          Text("You are Sucessful in the quiz",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          Container(
            height: 300,
            width: 300,
            child: Image.network('https://cdn.dribbble.com/users/1202975/screenshots/3579065/tick_2.gif')
          ),
        ],),
      ),
    );
  }
}