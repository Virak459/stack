import 'package:flutter/material.dart';

class mt extends StatefulWidget {
  const mt({Key? key}) : super(key: key);

  @override
  State<mt> createState() => _mtState();
}

class _mtState extends State<mt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('koko'),
        ),
        body: Center(
          child: MaterialButton(
            onPressed: () {},
            child: const Text("koko"),
            color: Colors.blue,
            splashColor: Colors.red,
            hoverElevation: 30,
            hoverColor: Colors.green,
          ),
        ));
  }
}
