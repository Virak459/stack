import 'package:flutter/material.dart';
// import 'package:stack/AlertDialog/AlertDialog.dart';
import 'BottomNavigationBar/BottomNavigationBar1.dart';
import 'TextFormField/Validator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Validator(),
      // routes: {"page1": ((context) => snb()), "page2": (context) => al()},
    );
  }
}
