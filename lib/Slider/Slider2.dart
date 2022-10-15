import 'package:flutter/material.dart';

class Slider2 extends StatefulWidget {
  const Slider2({Key? key}) : super(key: key);

  @override
  State<Slider2> createState() => _Slider2State();
}

// dl page 80
class _Slider2State extends State<Slider2> {
  static double Value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Slider(
          value: Value,
          max: 100,
          min: 0,
          inactiveColor: Colors.red,
          label: 'ghdfgyhdr',
          activeColor: Colors.black,
          onChanged: (Val) {
            setState(
              () {
                Value = Val;
              },
            );
          },
          onChangeEnd: (Val) {
            setState(
              () {
                print(Value);
              },
            );
          },
        ),
      ),
    );
  }
}
