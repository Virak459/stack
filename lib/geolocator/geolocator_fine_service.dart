import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class geolocator1 extends StatefulWidget {
  const geolocator1({Key? key}) : super(key: key);

  @override
  State<geolocator1> createState() => _geolocator1State();
}

class _geolocator1State extends State<geolocator1> {
  // Future get_service() async {
  //   bool service_location;
  //   service_location = await Geolocator.isLocationServiceEnabled();
  //   print(service_location);
  // }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   // get_service();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
