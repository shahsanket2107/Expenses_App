import 'package:Expenses_App/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: transactions.isEmpty
          ? Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Text('No Transactions added yet!!',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Theme.of(context).primaryColor)),
                SizedBox(
                  height: 100,
                ),
                Container(
                    child: Image.asset(
                  'assets/images/empty_cart.jpeg',
                  fit: BoxFit.cover,
                ))
              ],
            )
          : ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 2.5,
                                color: Theme.of(context).primaryColor)),
                        child: Text(
                            'Rs. ${transactions[index].amount.toStringAsFixed(0)}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Theme.of(context).primaryColor)),
                        padding: EdgeInsets.all(10),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            transactions[index].title,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.deepOrangeAccent),
                          ),
                          Text(
                            DateFormat.yMMMd().format(transactions[index].time),
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey[800]),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
              itemCount: transactions.length,
            ),
    );
  }
}
