import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class DropdownSearch1 extends StatefulWidget {
  const DropdownSearch1({Key? key}) : super(key: key);

  @override
  State<DropdownSearch1> createState() => _DropdownSearch1State();
}

class _DropdownSearch1State extends State<DropdownSearch1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: DropdownSearch<String>(
          mode: Mode.DIALOG,
          showSelectedItems: true,
          items: ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
          dropdownSearchDecoration: InputDecoration(
            labelText: "Menu mode",
            hintText: "country in menu mode",
          ),
          // popupItemDisabled: (String s) => s.startsWith('I'),
          onChanged: print,
          // selectedItem: "Brazil",
        ),
      ),
    );
  }
}
