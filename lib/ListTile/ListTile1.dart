import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class lt extends StatefulWidget {
  const lt({Key? key}) : super(key: key);

  @override
  State<lt> createState() => _ltState();
}

class _ltState extends State<lt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: const ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.horizontal(left: Radius.circular(20))),
              style: ListTileStyle.list,
              tileColor: Colors.black54,
              trailing: Text("data"),
              title: Text("Hello"),
              leading: Icon(CupertinoIcons.arrowshape_turn_up_left_fill),
            ),
          ),
        ],
      ),
    );
  }
}
