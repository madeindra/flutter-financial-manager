import 'package:financial_manager/widgets/transaction_input.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import './widgets/transaction_list.dart';
import './models/transaction.dart';

void main() => runApp(MyFinancial());

class MyFinancial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Financial Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.amber
      ),
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  
  final List<Transaction> _userTransactions = [];

  void addNew(String txName, int txPrice) {
    final newTx = Transaction(
        id: new Random().toString(),
        name: txName,
        price: txPrice,
        date: DateTime.now());

    setState(() {
    _userTransactions.add(newTx);
    });
  }

  void _showTransactionInput(BuildContext context) {
    showModalBottomSheet(context: context, builder: (_) {
      return TransactionInput(addNew); 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Financial Manager')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              child: Center(child: Text("Overview")),
              elevation: 5,
            ),
          ),
          TransactionList(_userTransactions),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _showTransactionInput(context),
      ),
    );
  }
}
