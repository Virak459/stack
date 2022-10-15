import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Validator extends StatefulWidget {
  const Validator({Key? key}) : super(key: key);

  @override
  State<Validator> createState() => _ValidatorState();
}

class _ValidatorState extends State<Validator> {
  GlobalKey<FormState> check = GlobalKey<FormState>();
  var num;
  send() {
    var val = check.currentState;
    setState(() {
      if (val != null) {
        print("valide");
      } else {
        print("No valide");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: check,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                keyboardType: TextInputType.number,
                autovalidateMode: AutovalidateMode.always,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 5),
                  ),
                ),
                validator: (value) {
                  if (value!.length < 3) {
                    return "Please input 3 value";
                  } else {
                    return "is okay";
                  }
                },
                onChanged: (val) {
                  setState(() {
                    num = int.parse(val);
                  });
                },
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 10, right: 10, top: 5),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                gradient: LinearGradient(
                  colors: [Colors.amber, Colors.cyan, Colors.deepOrange],
                ),
              ),
              child: TextButton(
                child: Text(
                  "Tast Validator",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                onPressed: () {
                  setState(() {
                    send();
                  });
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.all(12),
              child: Text("${num}"),
            )
          ],
        ),
      ),
    );
  }
}
