import 'package:flutter/material.dart';

//Expanded is Flexible with FlexFit.tight
class MyAltHomePage extends StatelessWidget {
  final example1 = Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      Container(
        height: 100,
        child: Text('Item 1'),
        color: Colors.red,
      ),
      Expanded(
        flex: 5,
        // fit: FlexFit.tight,
        child: Container(
          height: 100,
          width: 100,
          child: Text('Item 2'),
          color: Colors.blue,
        ),
      ),
      Flexible(
        flex: 1,
        fit: FlexFit.loose,
        child: Container(
          height: 100,
          child: Text('Item 3'),
          color: Colors.orange,
        ),
      ),
    ],
  );

  final example2 = Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      Container(
        height: 100,
        child: Text('Item 1 - pretty big!'),
        color: Colors.red,
      ),
      Container(
        height: 100,
        child: Text('Item 2'),
        color: Colors.blue,
      ),
      Container(
        height: 100,
        child: Text('Item 3'),
        color: Colors.orange,
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
          child: Text('Item 1'),
          color: Colors.red,
        ),
      ),
      Expanded(
        flex: 1,
        // fit: FlexFit.tight,
        child: Container(
          height: 100,
          width: 100,
          child: Text('Item 2'),
          color: Colors.blue,
        ),
      ),
      Expanded(
        flex: 1,
        child: Container(
          height: 100,
          child: Text('Item 3'),
          color: Colors.orange,
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return example3;
  }
}
