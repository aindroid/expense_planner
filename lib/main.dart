import 'package:expense_planner/widgets/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final titleTextStyle = ThemeData.light().appBarTheme.titleTextStyle;
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.purple,
          colorScheme: ThemeData.light()
              .colorScheme
              .copyWith(secondary: Colors.amber, primary: Colors.purple),
          textTheme: ThemeData.light().textTheme.copyWith(
                headline6: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
          appBarTheme: AppBarTheme(
              titleTextStyle: titleTextStyle != null
                  ? titleTextStyle.copyWith(fontFamily: 'OpenSans')
                  : TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
          fontFamily: 'Quicksand'),
      title: 'Personal Expenses',
      home: MyHomePage(),
    );
  }
}
