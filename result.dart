import 'package:flutter/material.dart';

class Result extends StatelessWidget {
final int resultScore;
final Function resetPass;

Result(this.resultScore,this.resetPass);

String get resultPhrase{
   String resultText ;
   if(resultScore <=8){
     resultText='You are awsome and innocent!';
   } else if(resultScore<=12){
     resultText='Pretty likeable!';
   } else if(resultScore<=16){
     resultText='You are ..... Strange!!';
   }
   else{
     resultText='You are bad!';
   }
   
   return resultText;
   }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.red.shade300
              ),
              textAlign:TextAlign.center,
              ),
              TextButton(
                onPressed: () {resetPass();},
  style: TextButton.styleFrom(
    primary: Colors.purpleAccent, // Text Color
  ),
                 child: Text(
                   'Restart Quiz',style: TextStyle(fontSize: 24),),
                  //textColor: Colors.blue,
                     //onPressed: (){resetPass();
                     
                     ),
        ],
      ),
      
    );
  }
}