import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback buttonHandler;

  CustomButton(this.buttonText, this.buttonHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ElevatedButton(
          style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.amber),
          foregroundColor: MaterialStateProperty.all(Colors.black)),
          onPressed: buttonHandler,
          child: Text(buttonText),
    ));
  }
}
