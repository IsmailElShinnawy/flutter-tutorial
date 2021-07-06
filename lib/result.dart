import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(
    this.resultScore,
    this.resetQuiz,
  );

  String get resultPhrase {
    return 'Done $resultScore';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(onPressed: this.resetQuiz, child: Text('Restart Quiz'), textColor: Colors.blue,)
        ],
      ),
    );
  }
}
