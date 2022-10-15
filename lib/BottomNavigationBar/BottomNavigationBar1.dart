import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomNavigationBar1 extends StatefulWidget {
  const BottomNavigationBar1({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBar1> createState() => _BottomNavigationBar1State();
}

class _BottomNavigationBar1State extends State<BottomNavigationBar1>
    with SingleTickerProviderStateMixin {
  static int index = 0;
  static TabController? controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(
        initialIndex: _BottomNavigationBar1State.index, length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BottomNavigationBar")),
      body: Column(
        children: [
          Container(
            child: IndexedStack(index: index, children: [
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.black,
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.red,
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.blue,
              ),
            ]),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          onTap: (i) {
            setState(() {
              index = i;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Setting"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag), label: "Shop"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_alert_sharp), label: "New"),
          ]),
    );
  }
}
