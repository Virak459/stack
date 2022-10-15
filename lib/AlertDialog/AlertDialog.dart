// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class al extends StatefulWidget {
  const al({Key? key}) : super(key: key);

  @override
  State<al> createState() => _alState();
}

class _alState extends State<al> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: TextButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          actions: [
                            FlatButton(
                                textColor: Colors.white,
                                color: Colors.red,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("Back"))
                          ],
                          title: Text("Hello world"),
                          content: Text("kiki"),
                        );
                      });
                },
                child: Text("AlertDialog Click me")),
          ),
          Center(
            child: TextButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return SimpleDialog(
                          title: const Text('Select Departments '),
                          children: [
                            SimpleDialogOption(
                              onPressed: () {},
                              child: const Text('Production'),
                            ),
                            SimpleDialogOption(
                              onPressed: () {
                                ;
                              },
                              child: const Text('Research'),
                            ),
                            SimpleDialogOption(
                              onPressed: () {},
                              child: const Text('Purchasing'),
                            ),
                            SimpleDialogOption(
                              onPressed: () {},
                              child: const Text('Marketing'),
                            ),
                            SimpleDialogOption(
                              onPressed: () {},
                              child: const Text('Accounting'),
                            )
                          ],
                        );
                      });
                },
                child: Text("AlertDialog Click me")),
          ),
        ],
      ),
    );
  }
}
