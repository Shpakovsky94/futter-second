import 'package:flutter/material.dart';
import 'package:futter_second/quiz.dart';
import 'package:futter_second/result.dart';
import 'package:futter_second/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new _MyAppState();
  }
}


class _MyAppState extends State<MyApp> {

  var _questionIndex = 0;
  int _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My best App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(questions: _questions, questionIndex: _questionIndex, answerQuestion: _answerQuestion,)
            : Result(restartQuestion: _restartQuestion, resultScore: _totalScore,),
      ),
    );
  }

:
  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex <= _questions.length){
      print('still have questions');
    }
  }

  void _restartQuestion() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }
}