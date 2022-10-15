import 'package:flutter/material.dart';

class responsives extends StatefulWidget {
  const responsives({Key? key}) : super(key: key);

  @override
  State<responsives> createState() => _responsivesState();
}

class _responsivesState extends State<responsives> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LayoutBuilder Example')),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth >= 576) {
            return _buildWideContainers();
          } else if (constraints.maxHeight < 576) {
            return _buildNormalContainer();
          } else {
            return _build();
          }
        },
      ),
    );
  }
}

Widget _build() {
  return Center(
    child: Container(
      height: 100.0,
      width: 100.0,
      color: Colors.red,
    ),
  );
}

Widget _buildNormalContainer() {
  return Center(
    child: Container(
      height: 100.0,
      width: 100.0,
      color: Colors.red,
    ),
  );
}

Widget _buildWideContainers() {
  return Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          height: 100.0,
          width: 100.0,
          color: Colors.red,
        ),
        Container(
          height: 100.0,
          width: 100.0,
          color: Colors.yellow,
        ),
      ],
    ),
  );
}
