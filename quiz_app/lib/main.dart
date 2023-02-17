import 'package:flutter/material.dart';
// importing custom widgets
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

// by adding '_' in front of the names (class, variable, methods...),
// now those classes are private instead of public,
// therefore, those classes are only accessible within this file.
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Blue', 'score': 6},
        {'text': 'Black', 'score': 8},
        {'text': 'Yellow', 'score': 5}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 4},
        {'text': 'Goat', 'score': 3}
      ]
    },
    {
      'questionText': 'What\'s your favorite place?',
      'answers': [
        {'text': 'SF', 'score': 7},
        {'text': 'SD', 'score': 10},
        {'text': 'LA', 'score': 4},
        {'text': 'AT', 'score': 6}
      ]
    }
  ];
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          // appBar is the widget on the very top part of the screen
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          // Column is an layout(invisible) widget
          // Column takes list of Widgets
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  answerQuestion: _answerQuestion)
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
