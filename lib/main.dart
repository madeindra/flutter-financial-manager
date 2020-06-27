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
            Column(
              children: transactions.map((tx) {
                return Row(
                  children: <Widget>[
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        tx.price.toString(),
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          tx.name,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          tx.date.toString(),
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey
                          ), 
                        ),
                      ],
                    ),
                  ],
                );
              }).toList(),
            ),
          ],
        ));
  }
}
