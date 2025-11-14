import 'package:expense_planner/models/transaction.dart';
import 'package:expense_planner/widgets/chart.dart';
import 'package:expense_planner/widgets/transaction_list.dart';
import 'package:expense_planner/widgets/user_input.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> _transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly Groceries',
      amount: 16.55,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly Groceries',
      amount: 103456.55,
      date: DateTime.now(),
    ),
  ];

  bool isTransactionWithin7Days(Transaction tx) {
    return tx.date.isAfter(DateTime.now().subtract(const Duration(days: 7)));
  }

  List<Transaction> get _recentTransactions {
    return _transactions.where((tx) => isTransactionWithin7Days(tx)).toList();
  }

  void _addNewTransaction(String title, double amount) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      title: title,
      amount: amount,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTx);
    });
  }

  void _startAddNewTransaction(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (bContext) {
          return GestureDetector(
              onTap: () {},
              behavior: HitTestBehavior.opaque,
              child: UserInput(_addNewTransaction));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          _startAddNewTransaction(context);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: const Text(
          'Personal Expenses',
        ),
        actions: [
          IconButton(
              onPressed: () {
                _startAddNewTransaction(context);
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Chart(_recentTransactions),
              TransactionList(_transactions)
            ]),
      ),
    );
  }
}
