import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class gridview2 extends StatefulWidget {
  const gridview2({Key? key}) : super(key: key);

  @override
  State<gridview2> createState() => _gridview2State();
}

class _gridview2State extends State<gridview2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView(
        scrollDirection: Axis.horizontal,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          for (int i = 0; i < 10; i++)
            Container(
              margin: const EdgeInsets.all(10),
              color: Colors.lightGreen.shade300,
              height: 200.0,
              width: 200.0,
            ),
        ],
      ),
    );
  }
}
