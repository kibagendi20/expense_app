import 'package:expense_app/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: 't1', title: 'New Shirt', amount: 700.00, date: DateTime.now()),
    Transaction(id: 't2', title: 'PS5', amount: 800, date: DateTime.now())
  ];

  //late String titleInput;
  //late String amountInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter App"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                width: double.infinity,
                child: const Card(
                  elevation: 5,
                  color: Colors.blue,
                  child: Text("CHART"),
                )),
            Card(
              elevation: 20,
              child: Container(
                //margin: EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children:  [
                     TextField(
                      decoration: const InputDecoration(
                        labelText: 'Title'
                      ),
                      //onChanged: (String value){
                       // titleInput = value;
                     // },
                     controller: titleController,
                    ), 
                     TextField(
                       decoration: const InputDecoration(
                        labelText: 'Amount'
                      ),
                      //onChanged: (String value){
                      //  amountInput = value;
                     // },
                     controller: amountController,
                    ),
                    TextButton(onPressed: (){
                      print(amountController.text);
                      print(titleController.text);
                    }, child: const Text("Save Transaction", style: TextStyle(color: Colors.purple),))
                    ],
                ),
              ),
            ),
            Column(
                children: transactions.map((tx) {
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
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(DateFormat.yMMMd().format(tx.date),
                          style: TextStyle(fontSize: 12, color: Colors.grey))
                    ],
                  )
                ],
              ));
            }).toList())
          ],
        ));
  }
}
