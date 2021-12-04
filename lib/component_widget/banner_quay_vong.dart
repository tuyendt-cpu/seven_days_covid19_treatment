import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Banner_Quay_Vong extends StatelessWidget {
  final List<String> imgList = [
    'assets/banner/banner_test.png',
    'assets/banner/banner_test.png',
    'assets/banner/banner_test.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
          ),
          items: [
            //item 1
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: AssetImage(imgList[0]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            //item 2
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: AssetImage(imgList[1]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            //item 3
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: AssetImage(imgList[2]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
