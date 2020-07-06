import 'package:flutter/material.dart';

class TransactionInput extends StatelessWidget {
  final Function newTx;
  final nameController = TextEditingController();
  final priceController = TextEditingController();

  TransactionInput(this.newTx);

  void addTransaction() {
    final nameTransaction = nameController.text;
    final priceTransaction = int.parse(priceController.text);

    if(nameTransaction.isNotEmpty && priceTransaction > 0){
      newTx(nameTransaction, priceTransaction);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Name'),
            controller: nameController,
            onSubmitted: (_) => addTransaction,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Price'),
            controller: priceController,
            keyboardType: TextInputType.numberWithOptions(signed: false, decimal: false),
            onSubmitted: (_) => addTransaction,
          ),
          FlatButton(
            child: Text("Add"),
            onPressed: addTransaction,
          )
        ]),
      ),
    );
  }
}
