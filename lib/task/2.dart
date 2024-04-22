import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Page2 extends StatelessWidget {
  final VoidCallback onNextPressed;
  final VoidCallback onPreviousPressed;

  Page2({required this.onNextPressed, required this.onPreviousPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Column(
        children: [
          SizedBox(height: 150),
          LottieBuilder.asset('assets/images/hourglass.json',height: 250,width: 250,fit: BoxFit.fill),
          Padding(padding: EdgeInsets.all(20)),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Text(
              "Apply for job anywhere & anytime",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 23),
            child: Text(
              'NetDev makes you can apply for job from anywhere and anytime',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 19,
              ),
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(45.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: onPreviousPressed,
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 131, 160, 185),
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    minimumSize: Size(35.0, 59.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.arrow_back),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: onNextPressed,
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 131, 160, 185),
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    minimumSize: Size(35.0, 59.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}