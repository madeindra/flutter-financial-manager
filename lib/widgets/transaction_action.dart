import 'package:flutter/material.dart';
import 'dart:math';
import './transaction_input.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class TransactionAction extends StatefulWidget {
  @override
  _TransactionActionState createState() => _TransactionActionState();
}

class _TransactionActionState extends State<TransactionAction> {
  final List<Transaction> _userTransactions = [];

  void _addNew(String txName, int txPrice) {
    final newTx = Transaction(
        id: new Random().toString(),
        name: txName,
        price: txPrice,
        date: DateTime.now());

    setState(() {
    _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      TransactionInput(_addNew),
      TransactionList(_userTransactions),
    ]);
  }
}
