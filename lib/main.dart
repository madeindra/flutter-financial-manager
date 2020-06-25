import 'package:flutter/material.dart';
import './transaction.dart';

void main() => runApp(MyFinancial());

class MyFinancial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Financial Manager',
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: '1',
      name: 'New Shoes',
      price: 1000000,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      name: 'Haircut',
      price: 200000,
      date: DateTime.now(),
    ),
  ];

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
            Card(
              child: Text("Transaction History"),
            ),
          ],
        ));
  }
}
