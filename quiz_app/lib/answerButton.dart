import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answer;
  final VoidCallback selectHandler;
  
  AnswerButton(this.answer, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          foregroundColor: MaterialStateProperty.all(Colors.black)
        ),
        child: Text(answer),
        onPressed: selectHandler,
      ),
    );
  }
}