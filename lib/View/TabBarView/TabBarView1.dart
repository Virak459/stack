import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TabBarView1 extends StatefulWidget {
  const TabBarView1({Key? key}) : super(key: key);

  @override
  State<TabBarView1> createState() => _TabBarView1State();
}

class _TabBarView1State extends State<TabBarView1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBarView1"),
        ),
        body: TabBarView(children: [
          Container(
            color: Colors.amber[100],
            height: 100,
          ),
          Container(
            color: Colors.blue[100],
            height: 100,
          ),
          Container(
            color: Colors.green[200],
            height: 100,
          ),
        ]),
      ),
    );
  }
}
