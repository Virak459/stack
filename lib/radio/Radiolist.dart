import 'package:flutter/material.dart';
import 'package:getwidget/components/radio_list_tile/gf_radio_list_tile.dart';

class rsf extends StatefulWidget {
  const rsf({Key? key}) : super(key: key);

  @override
  State<rsf> createState() => _rsfState();
}

class _rsfState extends State<rsf> {
  String kl = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Text(
          "RadioList",
          style: TextStyle(fontSize: 32),
        ),
        RadioListTile(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            selectedTileColor: Colors.amber,
            selected: kl == "USA" ? true : false,
            activeColor: Colors.red,
            title: Text("USA"),
            value: "USA",
            groupValue: kl,
            onChanged: (val) {
              setState(() {
                kl = "$val";
              });
            }),
        RadioListTile(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            selectedTileColor: Colors.amber,
            selected: kl == "ASA" ? true : false,
            activeColor: Colors.red,
            title: Text("ASA"),
            value: "ASA",
            groupValue: kl,
            onChanged: (val) {
              setState(() {
                kl = "$val";
              });
            }),
      ]),
    );
  }
}
