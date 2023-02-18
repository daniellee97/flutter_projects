import 'package:flutter/material.dart';

import './customText.dart';
import './customButton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  var _texts = [
    'Hello',
    'Welcome to the first app',
    'My name is Dan',
    'Hope to see you again'
  ];
  var _textIndex = 0;

  void _setText() {
    setState(() => _textIndex += 1);
  }

  void _resetText() {
    setState(() => _textIndex = 0);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Random Text Generator'),
            ),
            body: _textIndex < _texts.length
                ? Column(
                    children: [
                      CustomText(_texts[_textIndex]),
                      CustomButton('Next', _setText),
                    ],
                  )
                : Column(children: [
                    CustomText('Start again?'),
                    CustomButton('Start over', _resetText)
                  ])));
  }
}
