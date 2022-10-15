import 'package:flutter/material.dart';

class iw extends StatelessWidget {
  const iw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: InkWell(
        onTap: () {
          print('sara');
        },
        child: Container(
          child: Image(
            image: AssetImage('assets/images/k.jpg'),
          ),
        ),
      )),
    );
  }
}
