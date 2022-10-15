import 'package:flutter/material.dart';

class showModalBottomSheet1 extends StatefulWidget {
  const showModalBottomSheet1({Key? key}) : super(key: key);

  @override
  State<showModalBottomSheet1> createState() => _showModalBottomSheet1State();
}

class _showModalBottomSheet1State extends State<showModalBottomSheet1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextButton(
          child: const Text(
            "Click Me",
            style: TextStyle(color: Colors.black),
          ),
          onPressed: () {
            //same to snackbar
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    height: 500,
                    color: Colors.green,
                    child: Text("data"),
                  );
                });
          },
        ),
      ),
    );
  }
}
