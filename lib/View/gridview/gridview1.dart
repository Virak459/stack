import 'package:flutter/material.dart';

class gv extends StatefulWidget {
  const gv({Key? key}) : super(key: key);

  @override
  State<gv> createState() => _gvState();
}

class _gvState extends State<gv> {
  final phone = [
    {'Name': "Samsung", 'Id': '123'},
    {'Name': "IPhone", 'Id': '9999'},
    {'Name': "Vivo", 'Id': '8888'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: phone.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, i) {
            return Container(
              height: 300,
              margin: const EdgeInsets.all(15),
              child: Text("${phone[i].values.first}"),
              color: Colors.red.shade200,
            );
          }),
    );
  }
}
