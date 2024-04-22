import 'package:flutter/material.dart';

import '1.dart';
import '2.dart';
import '3.dart';
import '4.dart';

void main() {
  runApp(SliderPage());
}

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageView(
          controller: _pageController,
          children: [
            Page1(
              onNextPressed: () {
                _pageController.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
            ),
            Page2(
              onNextPressed: () {
                _pageController.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
              onPreviousPressed: () {
                _pageController.previousPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
            ),
            Page3(
              onPreviousPressed: () {
                _pageController.previousPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
              onNextPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Login1()));
              },
            ),
          ],
        ),
      ),
    );
  }
}