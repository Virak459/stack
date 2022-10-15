import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class dd1 extends StatefulWidget {
  const dd1({Key? key}) : super(key: key);

  @override
  State<dd1> createState() => _dd1State();
}

class _dd1State extends State<dd1> {
  var kk = "";
  var moviesTitles = ['Inception', 'Heat', 'Spider Man'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Example Dropdown 1"),
      ),
      body: Center(
        child: Container(
          color: GFColors.INFO,
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.all(10),
          child: DropdownButton(
            underline: Divider(thickness: 2),
            items: moviesTitles
                .map((value) => DropdownMenuItem(
                      value: value,
                      child: Text(value),
                    ))
                .toList(),
            onChanged: (Val) {
              setState(() {
                kk = "$Val";
              });
            },
            value: kk,
          ),
        ),
      ),
    );
  }
}
