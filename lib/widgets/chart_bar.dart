import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double spendingAmount;
  final double spendingPercentageTotal;

  const ChartBar(
      {super.key,
      required this.label,
      required this.spendingAmount,
      required this.spendingPercentageTotal});

  @override
  Widget build(BuildContext context) {
    debugPrint('SPENDING PERCENTAGE: $spendingPercentageTotal');
    return Column(
      children: [
        FittedBox(child: Text('£${spendingAmount.toStringAsFixed(0)}')),
        const SizedBox(
          height: 6,
        ),
        SizedBox(
          height: 60,
          width: 10,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                    color: const Color.fromRGBO(220, 220, 220, 1),
                    borderRadius: BorderRadius.circular(20)),
              ),
              FractionallySizedBox(
                alignment: Alignment.bottomCenter,
                widthFactor: 1.0,
                heightFactor: spendingPercentageTotal,
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(20)),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(label),
      ],
    );
  }
}
