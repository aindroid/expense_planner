import 'package:expense_planner/widgets/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
                bodyLarge: const TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                bodyMedium: const TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 14,
                  color: Colors.black,
                ),
                titleLarge: const TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
          appBarTheme: AppBarTheme(
              titleTextStyle: titleTextStyle != null
                  ? titleTextStyle.copyWith(fontFamily: 'OpenSans')
                  : const TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
          fontFamily: 'Quicksand'),
      title: 'Personal Expenses',
      home: MyHomePage(),
    );
  }
}
