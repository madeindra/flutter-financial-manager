import 'package:flutter/material.dart';

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
        body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                child: Center(child: Text("Overview")),
                elevation: 5,
              ),
            ),
            Container(
              width: double.infinity,
              child: Card(
                child: Center(child: Text("Transaction History")),
                elevation: 5,
              ),
            ),
          ],
        ));
  }
}
