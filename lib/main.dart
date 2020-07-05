import 'package:flutter/material.dart';
import './widgets/transaction_action.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('My Financial Manager')),
        body: SingleChildScrollView(
          child: Column(
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
              TransactionAction(),
            ],
          ),
        ));
  }
}
