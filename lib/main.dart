import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _imagePaths = [
    'images/img01.jpg',
    'images/img02.jpg',
    'images/img03.jpg',
    'images/img04.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(appBar: AppBar(
          title: Center(child: Text('My PiCs')),backgroundColor: Colors.transparent,
        ),
          body: SafeArea(
            child: Center(
              child: CarouselSlider(
                  options: CarouselOptions(autoPlay: true,),
                  items: _imagePaths.map((imagePath) {
                    return Builder(builder: (context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          child: Image.asset(imagePath));
                    });
                  }).toList()),
            ),
          ),
        ));
  }
}