import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/transaction.dart';

class TransactionList extends StatefulWidget {
  const TransactionList({Key? key}) : super(key: key);

  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {

  final List<Transaction>_userTransactions = [
    Transaction(id: 't1', title: 'New Shirt', amount: 700.00, date: DateTime.now()),
    Transaction(id: 't2', title: 'PS5', amount: 800, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
                children: _userTransactions.map((tx) {
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