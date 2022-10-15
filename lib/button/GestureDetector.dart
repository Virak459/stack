import 'package:flutter/material.dart';

class dtr extends StatelessWidget {
  const dtr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: GestureDetector(
          onTap: () {
            print("dtr");
          },
          // onTapDown: (Tap) {
          //   print("dtr1");
          // },
          child: Container(
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Colors.redAccent,
                    Colors.blueAccent,
                    Colors.purpleAccent
                  ],
                ),
                borderRadius: BorderRadius.circular(5),
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.57),
                      blurRadius: 5,
                      spreadRadius: 4)
                ]),
            child: const Text(
              "GestureDetector Button",
              style: TextStyle(fontSize: 28),
            ),
          ),
        ),
      ),
    );
  }
}
