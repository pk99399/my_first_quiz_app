//In this file  definition of class 'Question'  ,
//So when Question class is created and Text is passed.
//this class simply takes a string Question and print on the container


import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;       //class variable
  Question(this.questionText);     //constructor that assign the string vale to questionText

  @override
  Widget build(BuildContext context) {
    return Container( 
      width: double.infinity,
      margin:EdgeInsets.all(15) ,
      child :Text(
      questionText,
      style: TextStyle(fontSize: 23,color: Colors.black87,),
      textAlign: TextAlign.center,
    ),);
  }
}