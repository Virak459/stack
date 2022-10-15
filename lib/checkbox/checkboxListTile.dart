import 'package:flutter/material.dart';
import 'package:getwidget/colors/gf_color.dart';

class chl extends StatefulWidget {
  const chl({Key? key}) : super(key: key);

  @override
  State<chl> createState() => _chlState();
}

class _chlState extends State<chl> {
  bool j = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text('checkboxListTile', style: TextStyle(fontSize: 30)),
          CheckboxListTile(
              contentPadding: EdgeInsets.only(bottom: 20),
              side: const BorderSide(
                  color: Colors.white12, width: 1, style: BorderStyle.solid),
              activeColor: GFColors.DANGER,
              // checkColor: Colors.blue,
              selectedTileColor: const Color.fromARGB(255, 0, 255, 60),
              title: const Text('Add Apple',
                  style: TextStyle(fontSize: 19, color: Colors.purpleAccent)),
              isThreeLine: true,
              selected: j,
              subtitle: const Text('if u like'),
              secondary: const Icon(Icons.accessibility),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              value: j,
              onChanged: (Val) {
                setState(() {
                  j = Val!;
                });
              }),
          CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              side: const BorderSide(
                  color: Colors.white12, width: 1, style: BorderStyle.solid),
              activeColor: GFColors.DANGER,
              // checkColor: Colors.blue,
              selectedTileColor: const Color.fromARGB(255, 0, 255, 60),
              title: const Text('Add Apple',
                  style: TextStyle(fontSize: 19, color: Colors.purpleAccent)),
              isThreeLine: true,
              selected: j,
              subtitle: const Text('if u like'),
              secondary: const Icon(Icons.accessibility),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              value: j,
              onChanged: (Val) {
                setState(() {
                  j = Val!;
                });
              })
        ],
      ),
    );
  }
}
