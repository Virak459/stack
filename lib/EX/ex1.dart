import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:stack/EX/connect1.dart';

class ex1 extends StatelessWidget {
  const ex1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '  New books',
                  style: TextStyle(fontSize: 25),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'See all',
                      style: TextStyle(fontSize: 18),
                    ))
              ],
            ),
          ),
          Divider(
            height: 1,
            thickness: 2,
            color: Colors.black,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < 5; i++)
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const cn()));
                    },
                    child: Container(
                      decoration: const BoxDecoration(),
                      padding: EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                    child: Container(
                                  child: const GFAvatar(
                                    minRadius: 72,
                                    maxRadius: 75,
                                    backgroundImage:
                                        AssetImage('assets/images/Coffee.jpg'),
                                    shape: GFAvatarShape.standard,
                                  ),
                                )),
                                Positioned(
                                  width: 50,
                                  left: 105,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(5, 8))),
                                    child: Row(
                                      children: const [
                                        Icon(
                                          Icons.star,
                                          color: Colors.black,
                                        ),
                                        Text(
                                          '4.2',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Text(
                              'Name Book',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.blue[100],
                                borderRadius: BorderRadius.circular(8)),
                            child: Text(
                              '20',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Divider(
            height: 1,
            thickness: 2,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '  For you',
                  style: TextStyle(fontSize: 25),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'See all',
                      style: TextStyle(fontSize: 18),
                    ))
              ],
            ),
          ),
          Divider(
            height: 1,
            thickness: 2,
            color: Colors.black,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < 5; i++)
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const cn()));
                    },
                    child: Container(
                      decoration: const BoxDecoration(),
                      padding: EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Stack(
                              children: [
                                Positioned(
                                    child: Container(
                                  child: const GFAvatar(
                                    minRadius: 72,
                                    maxRadius: 75,
                                    backgroundImage:
                                        AssetImage('assets/images/Coffee.jpg'),
                                    shape: GFAvatarShape.standard,
                                  ),
                                )),
                                Positioned(
                                  width: 50,
                                  left: 105,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        color: Colors.blueGrey,
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(5, 8))),
                                    child: Row(
                                      children: const [
                                        Icon(
                                          Icons.star,
                                          color: Colors.black,
                                        ),
                                        Text(
                                          "${4.6}",
                                          style: TextStyle(color: Colors.amber),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: const Text(
                              'Name Book',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.blue[100],
                                borderRadius: BorderRadius.circular(8)),
                            child: const Text(
                              '20',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Divider(
            height: 1,
            thickness: 2,
          ),
        ],
      ),
    );
  }
}


// Container(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       '  New books',
//                       style: TextStyle(fontSize: 25),
//                     ),
//                     TextButton(
//                         onPressed: () {},
//                         child: Text(
//                           'See all',
//                           style: TextStyle(fontSize: 18),
//                         ))
//                   ],
//                 ),
//               ),


// TextButton(
//                       onPressed: () {},
//                       child: Container(
//                         padding: EdgeInsets.all(5),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Container(
//                               child: Stack(
//                                 overflow: Overflow.visible,
//                                 children: [
//                                   Positioned(
//                                       child: Container(
//                                     child: const GFAvatar(
//                                       minRadius: 72,
//                                       maxRadius: 75,
//                                       backgroundImage: AssetImage(
//                                           'assets/images/Coffee.jpg'),
//                                       shape: GFAvatarShape.standard,
//                                     ),
//                                   )),
//                                   Positioned(
//                                     left: 100,
//                                     child: Container(
//                                       decoration: const BoxDecoration(
//                                           color: Colors.white,
//                                           borderRadius: BorderRadius.all(
//                                               Radius.elliptical(5, 8))),
//                                       child: Row(
//                                         children: const [
//                                           Icon(
//                                             Icons.star,
//                                             color: Colors.black,
//                                           ),
//                                           Text(
//                                             '4.5',
//                                             style:
//                                                 TextStyle(color: Colors.black),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Container(
//                               child: Text(
//                                 'Name Book',
//                                 style: TextStyle(
//                                   fontSize: 20,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               alignment: Alignment.center,
//                               width: 30,
//                               decoration: BoxDecoration(
//                                   color: Colors.blue[100],
//                                   borderRadius: BorderRadius.circular(8)),
//                               child: Text(
//                                 '20',
//                                 style: TextStyle(
//                                   fontSize: 15,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),