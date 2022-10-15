import 'package:flutter/material.dart';

class lv extends StatefulWidget {
  const lv({Key? key}) : super(key: key);

  @override
  State<lv> createState() => _lvState();
}

class _lvState extends State<lv> {
  List<Color> colors = [
    Colors.blue,
    Colors.amber,
    Colors.pink,
    Colors.blue,
    Colors.amber,
    Colors.pink,
    Colors.blue,
    Colors.amber,
    Colors.pink
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        for (int i = 0; i < colors.length; i++)
          if (i < (2 * i + 1))
            (Container(
              width: 50.0,
              height: 90.0,
              margin: const EdgeInsets.only(top: 10, bottom: 5),
              color: colors[i],
            ))
          else
            (ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (int i = 0; i < colors.length; i++)
                  Container(
                    width: 50.0,
                    height: 90.0,
                    margin: const EdgeInsets.only(top: 10, bottom: 5),
                    color: colors[i],
                  )
              ],
            ))
      ],
    );
  }
}
