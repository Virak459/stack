import 'package:flutter/material.dart';

class rdi extends StatefulWidget {
  const rdi({Key? key}) : super(key: key);

  @override
  State<rdi> createState() => _rdiState();
}

class _rdiState extends State<rdi> {
  String rd = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Text(
          " radio ",
          style: TextStyle(fontSize: 34),
        ),
        Row(
          children: [
            Row(
              children: [
                Text('USA'),
                Radio(
                    value: "USA",
                    groupValue: rd,
                    onChanged: (Val) {
                      setState(() {
                        rd = "$Val";
                      });
                    }),
              ],
            ),
            Row(
              children: [
                Text("JP"),
                Radio(
                    value: "JP",
                    groupValue: rd,
                    onChanged: (Val) {
                      setState(() {
                        rd = "$Val";
                      });
                    }),
              ],
            ),
            Row(
              children: [
                Text("RS"),
                Radio(
                    value: "RS",
                    groupValue: rd,
                    onChanged: (Val) {
                      setState(() {
                        rd = "$Val";
                      });
                    }),
              ],
            ),
            Row(
              children: [
                Text("CH"),
                Radio(
                    value: "CH",
                    groupValue: rd,
                    onChanged: (Val) {
                      setState(() {
                        rd = "$Val";
                      });
                    }),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
