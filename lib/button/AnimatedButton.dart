import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';

class AnimatedButton1 extends StatefulWidget {
  const AnimatedButton1({Key? key}) : super(key: key);

  @override
  State<AnimatedButton1> createState() => _AnimatedButton1State();
}

class _AnimatedButton1State extends State<AnimatedButton1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: AnimatedButton(
          child: Text(
            'Simple button',
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
