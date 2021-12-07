import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({required key}) : super(key: key);

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final List<String> images = [
    'assets/images/2A.jpg',
    'assets/images/2B.jpg',
    'assets/images/3A.jpg',
    'assets/images/3B.jpg',
    'assets/images/4A.jpg',
    'assets/images/5A.jpg',
    'assets/images/5B.jpg',
  ];

  List<Widget> generatedImagesTitles() {
    return images
        .map((element) => ClipRRect(
              child: Image.asset(
                element,
                fit: BoxFit.cover,
                width: 300,
                height: 300,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 30),
      child: Stack(
        children: [
          CarouselSlider(
              items: generatedImagesTitles(),
              options: CarouselOptions(
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 2,
              ))
        ],
      ),
    );
  }
}
