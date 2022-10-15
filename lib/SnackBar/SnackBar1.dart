import 'package:flutter/material.dart';

class snb extends StatefulWidget {
  const snb({Key? key}) : super(key: key);

  @override
  State<snb> createState() => _snbState();
}

class _snbState extends State<snb> {
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldState,
      appBar: AppBar(),
      body: Center(
          child: TextButton(
        child: const Text(
          "Please chick me",
          style: TextStyle(fontSize: 20),
        ),
        onPressed: () {
          final snackBar = SnackBar(
            content: const Text('Yay! A SnackBar!'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
      )),
    );
  }
}
