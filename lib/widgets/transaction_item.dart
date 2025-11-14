import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionItem extends StatelessWidget {
  final String title;
  final double amount;
  final DateTime date;
  final String formattedDate;

  TransactionItem(
      {super.key,
      required this.title,
      required this.amount,
      required this.date})
      : formattedDate = DateFormat.yMMMd('en_US').format(date);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Row(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border:
                  Border.all(color: Theme.of(context).primaryColor, width: 2)),
          child: Text(
            '£${amount.toStringAsFixed(2)}',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Theme.of(context).primaryColor),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              formattedDate,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            )
          ],
        )
      ],
    ));
  }
}
