import 'package:flutter/material.dart';

class in_st extends StatefulWidget {
  in_st({Key? key}) : super(key: key);

  @override
  State<in_st> createState() => _in_stState();
}

class _in_stState extends State<in_st> {
  var i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Container(
              child: IndexedStack(index: i, children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.black,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.red,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                ),
              ]),
            ),
            Container(
              width: 500,
              height: 200,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          i = 0;
                        });
                      },
                      icon: const Icon(Icons.restore_page_outlined)),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          i = 1;
                        });
                      },
                      icon: const Icon(Icons.restore_page_outlined)),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          i = 2;
                        });
                      },
                      icon: const Icon(Icons.restore_page_outlined)),
                ],
              ),
            ),
          ],
        ));
  }
}
