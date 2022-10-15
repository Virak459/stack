import 'package:flutter/material.dart';

class ep extends StatelessWidget {
  const ep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                child: Text('one'),
                color: Colors.red,
              )),
          Expanded(
              flex: 1,
              child: Container(
                child: Text('two'),
                color: Colors.blueGrey,
              )),
          Expanded(
              flex: 2,
              child: Container(
                child: Text('three'),
                color: Colors.cyan,
              )),
          Expanded(
              flex: 3,
              child: Container(
                child: Text('four'),
                color: Colors.teal,
              )),
        ],
      ),
    );
  }
}
