import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';

late final Function addTx;
final titleController = TextEditingController();
final amountController = TextEditingController();

class NewTransaction extends StatelessWidget {
  const NewTransaction({Key? key, @required addTx}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
                     addTx(titleController.text, double.parse(amountController.text));
                    }, child: const Text("Save Transaction", style: TextStyle(color: Colors.purple),))
                    ],
                ),
              ),
            );
  }
}