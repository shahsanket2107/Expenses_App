import 'package:flutter/material.dart';
import 'user_transaction.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              autofocus: true,
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              // onChanged: (val) {
              //   titleInput = val;
              // }
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              // onChanged: (val) {
              //   amountInput = val;
              // },
            ),
            RaisedButton(
                child: Text('Add Transaction'),
                textColor: Colors.blue[800],
                onPressed: () {
                  addTx(titleController.text,
                      double.parse(amountController.text));
                  // print(titleController.text);
                  // print(amountController.text);

                  // print(titleInput);
                  // print(amountInput);
                })
          ],
        ),
      ),
    );
  }
}
