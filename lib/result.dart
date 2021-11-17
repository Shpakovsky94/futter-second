import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback restartQuestion;
  final int resultScore;

  const Result({@required this.restartQuestion, @required this.resultScore});

  String get resultText {
    var result = 'Your total score is $resultScore';
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultText,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
                primary: Colors.blue,
                side: BorderSide(color: Colors.orange),),
            child: Text('Restart Quiz!'),
            onPressed: restartQuestion,
          ),
        ],
      ),
    );
  }
}
