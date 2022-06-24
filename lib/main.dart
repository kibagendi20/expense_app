import 'package:expense_app/widgets/transaction_list.dart';
import 'package:flutter/material.dart';


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
             TransactionList(),
            
          ],
        ));
  }
}
