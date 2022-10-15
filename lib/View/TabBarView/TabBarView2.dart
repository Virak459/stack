import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TabBarView2 extends StatefulWidget {
  const TabBarView2({Key? key}) : super(key: key);

  @override
  State<TabBarView2> createState() => _TabBarView2State();
}

class _TabBarView2State extends State<TabBarView2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            title: const Text("TabBarView1"),
            bottom: const TabBar(
              tabs: [
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
