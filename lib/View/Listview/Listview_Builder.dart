import 'package:flutter/material.dart';

class ls1 extends StatefulWidget {
  const ls1({Key? key}) : super(key: key);

  @override
  State<ls1> createState() => _ls1State();
}

class _ls1State extends State<ls1> {
  final phone = [
    {'Name': "Samsung", 'Id': '123'},
    {'Name': "IPhone", 'Id': '9999'},
    {'Name': "Vivo", 'Id': '8888'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: phone.length,
          itemBuilder: (context, i) {
            return Container(
              height: 200,
              margin: EdgeInsets.only(top: 10),
              child: Text("${phone[i].values.first}"),
              color: Colors.red.shade200,
            );
          }),
    );
  }
}

// ListView.builder == ListView + Loop(itemCount)
// in return u can use ListView for design it with Map