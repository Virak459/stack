import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:stack/EX/connect2.dart';
import 'package:stack/EX/ex1.dart';
import 'package:stack/stack/st1.dart';

class cn extends StatelessWidget {
  const cn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  fit: StackFit.passthrough,
                  children: [
                    const Positioned(
                      child: GFImageOverlay(
                          height: 400,
                          width: 500,
                          image: AssetImage('assets/images/k.jpg')),
                    ),
                    Positioned(
                      top: 380,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        height: 400,
                        width: 395,
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "The Memory Police",
                                  style: TextStyle(
                                      fontSize: 20,
                                      decoration: TextDecoration.none,
                                      color: Colors.black),
                                ),
                                Icon(
                                  Icons.article_outlined,
                                  color: Colors.amber,
                                )
                              ],
                            ),
                            Row(
                              children: const [
                                Text(
                                  ' By Yoko Ogawa',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                  textAlign: TextAlign.left,
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Text(
                                        '5.0',
                                        style: TextStyle(
                                          color: Colors.amber,
                                          fontSize: 18,
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                      Text(
                                        '(1534)',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 14,
                                          decoration: TextDecoration.none,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Text(
                                  '\$18.0',
                                  style: TextStyle(
                                    fontSize: 19,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'About the book',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    decoration: TextDecoration.none,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  '\nFlutter almost has all the widgets available that developers can use in the project but again, we used to develop lots of projects with flutter and hence decided why not develop all the possible widgets that can be reused in any project and speed up the app development.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    decoration: TextDecoration.none,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      margin: EdgeInsets.only(top: 50),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ex1()));
                          },
                          child: Icon(
                            Icons.chevron_left,
                            size: 50,
                            color: Colors.white,
                          )),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 250, left: 280),
                      child: GFButton(
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const cu2()));
                        },
                        text: "Buy now",
                        shape: GFButtonShape.standard,
                        size: GFSize.LARGE,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
