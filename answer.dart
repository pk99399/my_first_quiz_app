//In this file definition of the class 'answer',
//class 'answer' takes pointer to function '_answerQuestion' and a string as argument.
//it just simply put Text in child inside container in button.
//And the fuction do run's after onPressed() is execute.


import 'package:flutter/material.dart';

class  Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

Answer(this.selectHandler,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
    primary: Colors.blue, // background
    onPrimary: Colors.white, // foreground
  ),
        
        //color:Colors.blue,
        //textColor: Colors.white,
        child: Text(answerText),
        onPressed:() {selectHandler();},   
       ),
      
    );
  }
}
