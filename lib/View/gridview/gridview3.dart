import 'package:flutter/material.dart';

class gridview3 extends StatefulWidget {
  const gridview3({Key? key}) : super(key: key);

  @override
  State<gridview3> createState() => _gridview3State();
}

class _gridview3State extends State<gridview3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          children: List.generate(
            10,
            (index) => Container(
              height: 200.0,
              width: 200.0,
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 7,
                    blurStyle: BlurStyle.normal,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
