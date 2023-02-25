import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatefulWidget {

  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> _userTransaction = [
    Transaction('0001', 'dinner', 28.00, DateTime.now()),
    Transaction('0002', 'weekly groceries', 98.70, DateTime.now()),
  ]; 
  @override
  Widget build(BuildContext context) {
    return Column(
              children: _userTransaction.map((tx) {
            return Row(
              children: [
                Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2)),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      '\$${tx.amount}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.purple,
                      ),
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(tx.title),
                    Text(DateFormat.yMMMd().format(tx.date),
                        style: TextStyle(color: Colors.blue))
                  ],
                )
              ],
            );
          }).toList());
  }
}