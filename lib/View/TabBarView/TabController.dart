import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class tc extends StatefulWidget {
  const tc({Key? key}) : super(key: key);

  @override
  State<tc> createState() => _tcState();
}

class _tcState extends State<tc> with SingleTickerProviderStateMixin {
  static int index = 0;
  static TabController? controller;

  @override
  void initState() {
    super.initState();
    controller =
        TabController(initialIndex: _tcState.index, length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("TabBarView1"),
          bottom: TabBar(
            controller: controller,
            tabs: const [
              Tab(
                text: 'one',
              ),
              Tab(
                text: 'two',
              ),
              Tab(
                text: 'three',
              ),
            ],
          )),
      body: TabBarView(controller: controller, children: [
        Container(
          color: Colors.amber[100],
          height: 100,
          child: Text("{$index}"),
        ),
        Container(
          color: Colors.blue[100],
          height: 100,
          child: Text("$index"),
        ),
        Container(
          color: Colors.green[200],
          height: 100,
          child: Text("$index"),
        ),
      ]),
    );
  }
}
