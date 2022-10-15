import 'package:flutter/material.dart';

class PageView2 extends StatefulWidget {
  const PageView2({Key? key}) : super(key: key);

  @override
  State<PageView2> createState() => _PageView2State();
}

class _PageView2State extends State<PageView2> {
  late PageController pc;
  @override
  void initState() {
    // TODO: implement initState
    pc = new PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            height: 250,
            width: double.infinity,
            child: PageView(
              controller: pc,
              onPageChanged: ((value) => print('$value')),
              reverse: true,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue[200],
                  ),
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red[200],
                  ),
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.yellow[200],
                  ),
                ),
              ],
            ),
          ),
          TextButton(
              onPressed: () {
                pc.animateToPage(1,
                    duration: Duration(seconds: 1), curve: Curves.easeIn);
              },
              child: const Text(
                "Photo 2",
                style: TextStyle(color: Colors.red, fontSize: 32),
              )),
        ],
      ),
    );
  }
}
