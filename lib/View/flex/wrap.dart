import 'package:flutter/material.dart';

class wp extends StatefulWidget {
  const wp({Key? key}) : super(key: key);

  @override
  State<wp> createState() => _wpState();
}

class _wpState extends State<wp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Wrap(
        direction: Axis.horizontal,
        children: [
          for (int i = 0; i < 19; i++)
            Container(
              margin: const EdgeInsets.all(5),
              color: Colors.purple[200],
              width: 50,
              height: 50,
            ),
        ],
      ),
    );
  }
}
