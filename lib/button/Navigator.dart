import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:stack/TextFormField/Validator.dart';

class Nt extends StatefulWidget {
  const Nt({Key? key}) : super(key: key);

  @override
  State<Nt> createState() => _NtState();
}

class _NtState extends State<Nt> {
  static int? i;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        foregroundColor: Colors.black,
        title: const Text("test Navigator"),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            child: GFButton(
                boxShadow: BoxShadow(
                    spreadRadius: 0.2,
                    color: Colors.black,
                    blurRadius: 9,
                    offset: Offset.fromDirection(
                      2,
                      9,
                    )),
                buttonBoxShadow: true,
                disabledElevation: 10,
                child: const Text("Connect use push"),
                textStyle: TextStyle(fontSize: 25),
                shape: GFButtonShape.pills,
                onPressed: () => {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Validator()))
                    }),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            child: GFButton(
                boxShadow: BoxShadow(
                    spreadRadius: 0.2,
                    color: Colors.black,
                    blurRadius: 9,
                    offset: Offset.fromDirection(
                      2,
                      9,
                    )),
                buttonBoxShadow: true,
                disabledElevation: 10,
                child: const Text("Connect use PushNamed "),
                textStyle: TextStyle(fontSize: 25),
                shape: GFButtonShape.pills,
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed("page1"); //យើងបានកំណត់ក្នុង​ main
                }),
          ),
        ],
      ),
    );
  }
}
