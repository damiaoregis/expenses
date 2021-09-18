import 'dart:math';

import 'package:expenses/components/transaction_list.dart';
import 'package:flutter/material.dart';
import 'transaction_form.dart';
import 'package:expenses/models/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({Key? key}) : super(key: key);

  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: "t1",
      title: "Novo Tênis de Corrida",
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t1",
      title: "Conta de Luz",
      value: 311.52,
      date: DateTime.now(),
    ),
  ];

  _addTrasaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );
    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionForm( _addTrasaction),
        TransactionList(_transactions),
      ],
    );
  }
}
