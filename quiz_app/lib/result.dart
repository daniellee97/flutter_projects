import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resethandler;

  Result(this.resultScore, this.resethandler);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 12) {
      resultText = 'Awesome Score!';
    } else if (resultScore <= 15) {
      resultText = 'Excellent Score!';
    } else {
      resultText = 'Top 1% winner!';
    }
    return 'Your score is $resultScore. ' + resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
              onPressed: resethandler,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
                foregroundColor: MaterialStateProperty.all(Colors.orange),
              ),
              child: Text(
                'Restart the quiz',
              )),
        ],
      ),
    );
  }
}
