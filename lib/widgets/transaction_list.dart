import 'package:expense_planner/models/transaction.dart';
import 'package:flutter/material.dart';

import './transaction_item.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        child: transactions.isEmpty
            ? Column(
                children: [
                  Text(
                    'No transactions added yet',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      height: 200,
                      child: Image.asset('assets/images/waiting.png',
                          fit: BoxFit.cover))
                ],
              )
            : ListView.builder(
                itemBuilder: (ctx, index) {
                  final transaction = transactions[index];
                  return TransactionItem(
                      amount: transaction.amount,
                      date: transaction.date,
                      title: transaction.title);
                },
                itemCount: transactions.length));
    // children: [
    //   ...transactions.map(
    //     (transaction) {
    //       return TransactionItem(
    //           amount: transaction.amount,
    //           date: transaction.date,
    //           title: transaction.title);
    //     },
    //   ).toList()
    // ],
  }
}
