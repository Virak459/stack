import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class stack1 extends StatelessWidget {
  const stack1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              tooltip: 'Open shopping cart',
              onPressed: () {
                // handle the press
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 170,
              color: Colors.pink[100],
              child: Stack(
                  clipBehavior: Clip.none,
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Positioned(
                      width: 200,
                      top: 90,
                      child: Container(
                        child: GFAvatar(
                          maxRadius: 90,
                          backgroundImage:
                              AssetImage('assets/images/Coffee.jpg'),
                          shape: GFAvatarShape.circle,
                        ),
                      ),
                    ),
                  ]),
              margin: EdgeInsets.only(bottom: 100),
            ),
            Container(
                alignment: Alignment.topCenter,
                width: double.infinity,
                height: 120,
                color: Colors.blue,
                child: Text('Virak oum'))
          ],
        ));
  }
}
