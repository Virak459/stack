import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class Slider1 extends StatefulWidget {
  const Slider1({Key? key}) : super(key: key);

  @override
  State<Slider1> createState() => _Slider1State();
}

class _Slider1State extends State<Slider1> {
  List<String> imageList = [
    "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg",
    "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: GFCarousel(
          // initialPage: 1, //កំណត់ចំនុចចាប់ផ្តើម
          reverse: false,
          // autoPlayCurve: Curves.easeInOutCubic,
          // scrollDirection: Axis.horizontal,
          // aspectRatio: 16 / 8,
          // viewportFraction: 5,
          // autoPlay: true,
          // autoPlayInterval: const Duration(seconds: 1),
          items: imageList.map(
            (url) {
              return Container(
                margin: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  child: Image.network(url, fit: BoxFit.cover, width: 1000.0),
                ),
              );
            },
          ).toList(),
          onPageChanged: (index) {
            setState(() {
              index;
            });
          },
        ),
      ),
    );
  }
}
