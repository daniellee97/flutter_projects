import 'package:flutter/material.dart';
import 'package:personal_expense_app/widgets/new_transaction.dart';

import './widgets/transaction_list.dart';
import './widgets/new_transaction.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // scaffold for the main page
    return MaterialApp(
      title: 'Personal Expenses App',
      home: MyHompage(),
    );
  }
}

class MyHompage extends StatelessWidget {
   
  //  String titleInput='';
  //  String amountInput='';
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your expenses')),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text('YOUR CHART HERE!'),
              elevation: 5,
            ),
          ),
          NewTransaction(),
          TransactionList(),
        ],
      ),
    );
    ;
  }
}
