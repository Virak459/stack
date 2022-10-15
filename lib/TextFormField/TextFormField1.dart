import 'package:flutter/material.dart';

class TextFormField1 extends StatefulWidget {
  const TextFormField1({Key? key}) : super(key: key);

  @override
  State<TextFormField1> createState() => _TextFormField1State();
}

class _TextFormField1State extends State<TextFormField1> {
  TextEditingController num = new TextEditingController();
  static int k = 0;
  static int k1 = 0;
  static int sum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextFormField(
            obscureText: true,
            obscuringCharacter: '#',
            decoration: InputDecoration(
                label: Text("password :  "),
                prefixStyle: TextStyle(color: Colors.red, fontSize: 18)),
          ),
          TextFormField(
            decoration: InputDecoration(
                suffixIcon: Icon(Icons.roundabout_left),
                suffixStyle: TextStyle(color: Colors.red, fontSize: 18)),
          ),
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.roundabout_left),
                prefixStyle: TextStyle(color: Colors.red, fontSize: 18)),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: TextFormField(
              onChanged: (val) {
                setState(() {
                  k = int.parse(val);
                  ;
                });
              },
              decoration: InputDecoration(
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 5, color: Colors.blue),
                      borderRadius: BorderRadius.circular(20)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 5, color: Colors.pink),
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 5, color: Colors.black),
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          Container(
            height: 70,
            margin: EdgeInsets.all(10),
            child: TextFormField(
              controller: num,
              onChanged: (out) {
                setState(() {
                  k1 = int.parse(out);
                  ;
                });
              },
              scrollPadding: const EdgeInsets.all(20.0),
              // keyboardType: TextInputType.emailAddress,
              keyboardType: TextInputType.number,
              maxLength: 10,
              textAlign: TextAlign.center,
              textInputAction:
                  TextInputAction.search, //ប្រើសម្រាប់កំណត់សញ្ញា​Access
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 3),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40)),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 3,
                    )),
              ),
            ),
          ),
          Center(
            child: MaterialButton(
              onPressed: () {},
              child: Text("$sum"),
              color: Colors.blue,
              splashColor: Colors.red,
              hoverElevation: 30,
              hoverColor: Colors.green,
            ),
          ),
          Center(
            child: MaterialButton(
              onPressed: () {
                setState(() {
                  sum = (k + k1);
                });
              },
              child: Text("Sum"),
              color: Colors.blue,
              splashColor: Colors.red,
              hoverElevation: 30,
              hoverColor: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
