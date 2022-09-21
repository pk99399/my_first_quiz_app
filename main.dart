import 'package:flutter_application_2/quiz.dart';
import 'package:flutter_application_2/result.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp>{
  final _questions= const [
      { 'questionText':'what\'s your favorite Color?',
       'answers': [
         {'text': 'Black','score': 10},
         {'text': 'Red', 'score':6},
         {'text':'Green','score': 3},
         {'text':'White','score':1}
         ],
      },
      {'questionText':'what\'s Your favorite Animal?',
       'answers': [
       {'text':'Rabbit','score': 3},
       {'text':'dog','score': 1},
       {'text':'Elephannt','score': 2},
       {'text':'Lion','score': 10}
       ],
      },
      {'questionText':'what is your mother name?',
       'answers': [
       {'text':'Max','score': 10},
       {'text':'Gita','score': 1},
       {'text':'Babita','score': 15},
       {'text':'Nilam','score': 2}
       ],
      },
    ];
  var _questionIndex =0;
  var _totalScore=0;
  void _answerQuestion(int score){
    
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex=_questionIndex+1;
    });
    print(_questionIndex);
    
    if(_questionIndex<_questions.length){
       print('we have more questions!');
    }
  }
  void _Reset(){
    setState(() {
      _questionIndex=0;
      _totalScore=0;
    });
      
    }
  @override
  Widget build(BuildContext context){
    
   return MaterialApp(
     home: Scaffold(
      appBar: AppBar(
       title: Text('My First App'),
       ),
      body: _questionIndex<_questions.length
      ?Quiz(
            answerQuestion: _answerQuestion,
            questionIndex: _questionIndex,
            questions: _questions,
            )
      :Result(_totalScore,_Reset),
      ),
    );
   
  }
}