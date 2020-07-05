import 'package:flutter/material.dart';

class TransactionInput extends StatelessWidget {
  final Function newTx;
  final nameController = TextEditingController();
  final priceController = TextEditingController();

  TransactionInput(this.newTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Name'),
            controller: nameController,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Price'),
            controller: priceController,
          ),
          FlatButton(
            child: Text("Add"),
            onPressed: () {
              newTx(nameController.text, int.parse(priceController.text));
            },
          )
        ]),
      ),
    );
  }
}
