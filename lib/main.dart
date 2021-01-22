import 'package:Expenses_App/widgets/user_transaction.dart';
import 'package:flutter/material.dart';

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
  // String titleInput;
  // String amountInput;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'First App',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Expenses App'),
            ),
            body: SingleChildScrollView(
              child: Column(children: <Widget>[
                Card(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Chart!!',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    width: double.infinity,
                  ),
                  color: Colors.greenAccent,
                  elevation: 5,
                ),
                UserTransactions()
              ]),
            )));
  }
}
