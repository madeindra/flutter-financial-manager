import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> trasactions;
  
  TransactionList(this.trasactions);

  @override
  Widget build(BuildContext context) {
    return Column(
              children: trasactions.map((tx) {
                return Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 2.5),
                          constraints: BoxConstraints(minWidth: 250),
                          child: Text(
                            '${tx.name}',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 2.5),
                          constraints: BoxConstraints(minWidth: 250),
                          child: Text(
                            DateFormat('d MMMM y').format(tx.date),
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Rp ${tx.price}',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                );
              }).toList(),
            );
  }
}