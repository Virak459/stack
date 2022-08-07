import 'package:flutter/material.dart';

class dv extends StatelessWidget {
  const dv({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Row(
          children: const [
            Text('one', style: TextStyle(fontSize: 40)),
            VerticalDivider(
              color: Colors.black,
              thickness: 5,
              endIndent: 12,
              indent: 12,
            ),
            Text('Two', style: TextStyle(fontSize: 40))
          ],
        ),
      ),
    );
  }
}
//Divider : ប្រើសម្រាប់ដាក់របារខ័ណ្ឌតាមជួរឈរ
//VerticalDivider​​ ៖​ ប្រើសម្រាប់ដាក់របារខ័ណ្ឌតាមជួរដេក