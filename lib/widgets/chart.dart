import 'package:expense_planner/models/transaction.dart';
import 'package:expense_planner/widgets/chart_bar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTransactions;

  const Chart(this.recentTransactions, {super.key});

  Map<String, Object> dayMap(int index) {
    final weekDay = DateTime.now().subtract(Duration(days: index));

    var totalSum = 0.0;

    for (var element in recentTransactions) {
      if (element.date.day == weekDay.day &&
          element.date.month == weekDay.month &&
          element.date.year == weekDay.year) {
        totalSum += element.amount;
      }
    }

    return {
      'day': DateFormat.E().format(weekDay).substring(0, 1),
      'amount': totalSum
    };
  }

  List<Map<String, Object>> get groupedTransactionValues {
    return List.generate(7, (index) => dayMap(index));
  }

  double get maxSpending {
    return groupedTransactionValues.fold(0.0, (previousValue, element) {
      return previousValue + (element['amount'] as double);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: const EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: groupedTransactionValues.map((data) {
            return Flexible(
              fit: FlexFit.tight,
              child: ChartBar(
                  label: data['day'] as String,
                  spendingAmount: data['amount'] as double,
                  spendingPercentageTotal: maxSpending == 0.0
                      ? 0.0
                      : (data['amount'] as double) / maxSpending),
            );
          }).toList(),
        ),
      ),
    );
  }
}
