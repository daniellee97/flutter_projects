import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  final texts = ['hello', 'welcome to the first app', 'my name is Daniel', 'hope to see you again'];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Random Text Generator'),
      ),
      body: d
    ));
  }
}
