import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
   TransactionList({Key? key, required this.userTransactions}) : super(key: key);
  final List<Transaction> userTransactions;
  @override
  Widget build(BuildContext context) {
    return Column(
                children: userTransactions.map((tx) {
              return Card(
                  child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      '\$: ${tx.amount}',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.purple,
                          fontWeight: FontWeight.bold),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.purple),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tx.title,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(DateFormat.yMMMd().format(tx.date),
                          style: const TextStyle(fontSize: 12, color: Colors.grey))
                    ],
                  ),
                ],
              ));
            }).toList());
  }
}