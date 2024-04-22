import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Carousel1());
}

class Carousel1 extends StatelessWidget {
  const Carousel1({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images=[
      "assets/images/google.jpg",
      "assets/images/facebook.jpg",
      "assets/images/instagram.jpg",
      "assets/images/twitter.jpg"
    ];
    return MaterialApp(
      home: Scaffold(
        body: Center(
child: CarouselSlider(
    items: images.map((items)
    {
      return Container(
        margin: EdgeInsets.all(50),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(items,
            fit: BoxFit.fitHeight,
            width: 1000,
          ),
        ),
      );
    }
    ).toList(),
    options: CarouselOptions(
      autoPlay: true,
      aspectRatio: 4/3,
      enlargeCenterPage: true,


    )),
        ),
      ),
    );
  }
}
