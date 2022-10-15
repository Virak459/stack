import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class ex2 extends StatelessWidget {
  const ex2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            iconSize: 30.0,
            icon: const Icon(Icons.shopping_cart_outlined),
            tooltip: 'Open shopping cart',
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            GFDrawerHeader(),
            ListTile(
              title: Text('Item 1'),
              onTap: null,
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: null,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30, left: 15),
            child: const Text("Delicious\nfood for you",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: TextField(),
          ),
        ],
      ),
    );
  }
}
