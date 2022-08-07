import 'package:flutter/material.dart';

import 'divinder.dart';
import 'flex/Expanded.dart';
import 'flex/Expanded1.dart';
import 'stack/st1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const exercise1(),
    );
  }
}
