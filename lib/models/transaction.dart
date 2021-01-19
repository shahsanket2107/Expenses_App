import 'package:flutter/foundation.dart';

class Transaction {
  @required
  final String id;
  @required
  final String title;
  @required
  final double amount;
  @required
  final DateTime time;

  Transaction({this.amount, this.id, this.time, this.title});
}
