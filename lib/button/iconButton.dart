import 'package:flutter/material.dart';

class ib extends StatefulWidget {
  const ib({Key? key}) : super(key: key);

  @override
  State<ib> createState() => _ibState();
}

class _ibState extends State<ib> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: IconButton(
        splashRadius: 80,
        icon: const Icon(Icons.ac_unit_sharp),
        onPressed: () {},
      )),
    );
  }
}
