import 'package:flutter/material.dart';
import './transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expenses App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: 't1', title: 'New shoes', amount: 3500, time: DateTime.now()),
    Transaction(
        id: 't2', title: 'New mobile cover', amount: 500, time: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'First App',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Expenses App'),
            ),
            body: Column(children: <Widget>[
              Card(
                child: Container(
                  child: Text('Chart!!'),
                  width: double.infinity,
                ),
                color: Colors.blue,
                elevation: 5,
              ),
              Column(
                children: transactions.map((tx) {
                  return Card(child: Text(tx.title));
                }).toList(),
              )
            ])));
  }
}
