import 'package:flutter/material.dart';

class Responsive1 extends StatefulWidget {
  const Responsive1({Key? key}) : super(key: key);

  @override
  State<Responsive1> createState() => _Responsive1State();
}

class _Responsive1State extends State<Responsive1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(builder: (context, constraints) {
      // Large screens (tablet on landscape mode, desktop, TV)
      if (constraints.maxWidth > 600) {
        return Row(
          children: [
            Column(
              children: [
                Container(
                  height: 100,
                  width: constraints.maxWidth * 0.75,
                  color: Colors.blueAccent,
                  child: const Center(
                    child: Text('Header'),
                  ),
                ),
                Container(
                  height: 300,
                  width: constraints.maxWidth * 0.75,
                  color: Colors.amber,
                  child: const Center(
                    child: Text('Main Content'),
                  ),
                ),
                Container(
                  height: constraints.maxHeight - 400,
                  width: constraints.maxWidth * 0.75,
                  color: Colors.lightGreen,
                  child: const Center(
                    child: Text('Footer'),
                  ),
                ),
              ],
            ),
            Container(
              width: constraints.maxWidth * 0.25,
              height: constraints.maxHeight,
              color: Colors.pink,
              child: const Center(
                child: Text('Right Sidebar'),
              ),
            ),
          ],
        );
      }

      // Samll screens
      return Column(
        children: [
          Container(
            height: 100,
            color: Colors.blue,
            child: const Center(
              child: Text('Header'),
            ),
          ),
          Container(
            height: 300,
            color: Colors.amber,
            child: const Center(
              child: Text('Main Content'),
            ),
          ),
          Container(
            height: constraints.maxHeight - 400,
            color: Colors.lightGreen,
            child: const Center(
              child: Text('Footer'),
            ),
          )
        ],
      );
    }));
  }
}
