import 'package:flutter/material.dart';

class rd extends StatefulWidget {
  const rd({Key? key}) : super(key: key);

  @override
  State<rd> createState() => _rdState();
}

class _rdState extends State<rd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.account_circle_sharp,
            size: 34,
          ),
          label: const Text(
            "click me",
            style: TextStyle(color: Colors.black, fontSize: 40),
          ),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(57),
            elevation: 90,
            shadowColor: Colors.amber,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
            primary: Colors.green,
            onPrimary: const Color.fromARGB(255, 255, 0, 0),
          ),
        ),
      ),
    );
  }
}
