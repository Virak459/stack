import 'package:flutter/material.dart';

class PageView1 extends StatefulWidget {
  const PageView1({Key? key}) : super(key: key);

  @override
  State<PageView1> createState() => _PageView1State();
}

class _PageView1State extends State<PageView1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            child: PageView(
              onPageChanged: ((value) => print('$value')),
              reverse: true,
              children: [
                Image.asset(
                  'assets/images/Coffee.jpg',
                  fit: BoxFit.fill,
                ),
                Image.asset("assets/images/k.jpg", fit: BoxFit.fill),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
