import 'package:flutter/material.dart';

class ch1 extends StatefulWidget {
  const ch1({Key? key}) : super(key: key);

  @override
  State<ch1> createState() => _ch1State();
}

class _ch1State extends State<ch1> {
  bool ch = false, lp = false, pp = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 200.0,
            child: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return SweepGradient(
                    colors: [Colors.green, Colors.blue, Colors.orange],
                    tileMode: TileMode.repeated,
                  ).createShader(bounds);
                },
                blendMode: BlendMode.colorDodge,
                child: Text(
                  "sjhdfkjhsdjhfj",
                  style: TextStyle(
                    fontSize: 45,
                  ),
                )),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              children: [
                Text('USA'),
                Checkbox(
                    value: ch,
                    onChanged: (vv) {
                      setState(() {
                        ch = vv!;
                      });
                    }),
                Text('USA'),
                Checkbox(
                    value: pp,
                    onChanged: (lp) {
                      setState(() {
                        pp = lp!;
                      });
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
