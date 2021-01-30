import 'package:Expenses_App/widgets/chart_bar.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTransactions;

  Chart(this.recentTransactions);
  List<Map<String, Object>> get groupedTransactionValues {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(
        Duration(days: index),
      );
      double totalSum = 0.0;
      for (var i = 0; i < recentTransactions.length; i++) {
        if (recentTransactions[i].time.day == weekDay.day &&
            recentTransactions[i].time.month == weekDay.month &&
            recentTransactions[i].time.year == weekDay.year) {
          totalSum += recentTransactions[i].amount;
        }
      }
      //print(DateFormat.E().format(weekDay));
      //print(totalSum);
      return {
        'Day': DateFormat.E().format(weekDay).substring(0, 1),
        'Amount': totalSum,
      };
    });
  }

  double get totalSpending {
    return groupedTransactionValues.fold(0.0, (sum, item) {
      return sum + item['Amount'];
    });
  }

  @override
  Widget build(BuildContext context) {
    //print(groupedTransactionValues);
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: groupedTransactionValues.map((data) {
            return Flexible(
              fit: FlexFit.tight,
              child: ChartBar(
                  data['Day'],
                  data['Amount'],
                  totalSpending == 0.0
                      ? 0.0
                      : (data['Amount'] as double) / totalSpending),
            );
          }).toList(),
        ),
      ),
    );
  }
}
