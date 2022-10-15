import 'package:flutter/material.dart';

class tr extends StatefulWidget {
  const tr({Key? key}) : super(key: key);

  @override
  State<tr> createState() => _trState();
}

class _trState extends State<tr> {
  List<Color> colors = [
    Colors.blue,
    Colors.amber,
    Colors.pink,
    Colors.red,
    Colors.white54,
    Colors.pink.shade200,
    Colors.blue.shade600,
    Colors.amber.shade100,
    Colors.pink.shade50
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              height: 90,
              width: 90,
              color: colors[2],
            ),
            Container(
              height: 90,
              width: 90,
              color: colors[1],
            ),
            Container(
              height: 200,
              width: 500,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (int i = 0; i < colors.length; i++)
                    Container(
                      height: 90,
                      width: 90,
                      color: colors[i],
                    ),
                ],
              ),
            ),
            Container(
              height: 90,
              width: 90,
              color: colors[5],
            ),
            Container(
              height: 90,
              width: 90,
              color: colors[6],
            ),
            Container(
              width: 90,
              height: 90,
              color: colors[4],
            ),
          ],
        ));
  }
}
