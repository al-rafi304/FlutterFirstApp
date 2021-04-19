import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
//4'06"
void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  
  @override 
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questionList = const [
      {'questionText': 'What do you like the most?', 
      'ansText': ['Mountains', 'Oceans', 'Green Fields', 'Sky']
      },
      {'questionText': 'What is your Favorite Color?', 
      'ansText': ['Red', 'Blue', 'Green','Black']
      },
      {'questionText': 'What describes you the best?', 
      'ansText': ['Lazy', 'Hard Worker', 'Introvert', 'Extrovert']
      }
      
    ];
  var _questionIdx = 0;

  void _answerQuestion() {
    if(_questionIdx < questionList.length){
       setState(() {
      _questionIdx += 1;
    });
    }
    else{}
   
    print(_questionIdx);
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIdx < questionList.length ? Column(
          children: [
            Question(questionList[_questionIdx]['questionText']),
            ...(questionList[_questionIdx]['ansText'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ) : Center(child: Text("DONE !!!")),
      ),
    );
  }
}