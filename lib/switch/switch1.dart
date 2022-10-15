import 'package:flutter/material.dart';

class sw extends StatefulWidget {
  const sw({Key? key}) : super(key: key);

  @override
  State<sw> createState() => _swState();
}

class _swState extends State<sw> {
  bool s = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(
            " switch",
            style: TextStyle(fontSize: 34),
          ),
          SwitchListTile(
              inactiveTrackColor: Colors.red[200],
              inactiveThumbColor: Colors.red,
              activeColor: Colors.green,
              title: Text("Switch 1"),
              value: s,
              onChanged: (val) {
                setState(() {
                  s = val;
                });
              })
        ],
      ),
    );
  }
}
