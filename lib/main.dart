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
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Chart!!',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  width: double.infinity,
                ),
                color: Colors.greenAccent,
                elevation: 5,
              ),
              Column(
                children: transactions.map((tx) {
                  return Card(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 2.5, color: Colors.purple)),
                          child: Text(tx.amount.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.purple)),
                          padding: EdgeInsets.all(10),
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              tx.title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.deepOrangeAccent),
                            ),
                            Text(
                              tx.time.toString(),
                              style: TextStyle(
                                  fontSize: 14, color: Colors.grey[900]),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                }).toList(),
              )
            ])));
  }
}
