import 'package:flutter/material.dart';

import './question.dart';
//4'06"
void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  
  @override 
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIdx = 0;

  void _answerQuestion() {
    setState(() {
      _questionIdx += 1;
    });
    print(_questionIdx);
  }

  @override
  Widget build(BuildContext context) {
    var questionList = [
      'What is your name?',
      'What is your Favorite Color?',
      'What is your hobby?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questionList[_questionIdx]),
            ElevatedButton(
              child: Text('Button01'),
              onPressed: _answerQuestion,
            ),
            ElevatedButton(
              child: Text('Button02'),
              onPressed: () => print('Button02 Pressed!'),
            ),
            ElevatedButton(
              child: Text('Button03'),
              onPressed: (){
                print('Something');
                print('Button03 Pressed!');
              },
            ),
          ],
        ),
      ),
    );
  }
}