import 'package:flutter/material.dart';

//Expanded is Flexible with FlexFit.tight
class MyAltHomePage extends StatelessWidget {
  final example1 = Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      Container(
        height: 100,
        color: Colors.red,
        child: Text('Item 1'),
      ),
      Expanded(
        flex: 5,
        // fit: FlexFit.tight,
        child: Container(
          height: 100,
          width: 100,
          color: Colors.blue,
          child: Text('Item 2'),
        ),
      ),
      Flexible(
        flex: 1,
        fit: FlexFit.loose,
        child: Container(
          height: 100,
          color: Colors.orange,
          child: Text('Item 3'),
        ),
      ),
    ],
  );

  final example2 = Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      Container(
        height: 100,
        color: Colors.red,
        child: Text('Item 1 - pretty big!'),
      ),
      Container(
        height: 100,
        color: Colors.blue,
        child: Text('Item 2'),
      ),
      Container(
        height: 100,
        color: Colors.orange,
        child: Text('Item 3'),
      ),
    ],
  );

  final example3 = Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      Expanded(
        flex: 1,
        child: Container(
          height: 100,
          color: Colors.red,
          child: Text('Item 1'),
        ),
      ),
      Expanded(
        flex: 1,
        // fit: FlexFit.tight,
        child: Container(
          height: 100,
          width: 100,
          color: Colors.blue,
          child: Text('Item 2'),
        ),
      ),
      Expanded(
        flex: 1,
        child: Container(
          height: 100,
          color: Colors.orange,
          child: Text('Item 3'),
        ),
      ),
    ],
  );

  MyAltHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return example3;
  }
}
