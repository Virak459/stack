import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class ku extends StatefulWidget {
  const ku({Key? key}) : super(key: key);

  @override
  State<ku> createState() => _kuState();
}

class _kuState extends State<ku> {
  var dropdownValue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(20),
            child: DropdownButtonHideUnderline(
              child: GFDropdown(
                padding: const EdgeInsets.all(15),
                borderRadius: BorderRadius.circular(5),
                border: const BorderSide(color: Colors.black12, width: 1),
                dropdownButtonColor: Colors.white,
                value: dropdownValue,
                onChanged: (newValue) {
                  setState(() {
                    dropdownValue = ("$newValue");
                  });
                },
                items: [
                  'FC Barcelona',
                  'Real Madrid',
                  'Villareal',
                  'Manchester City'
                ]
                    .map((value) => DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        ))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
