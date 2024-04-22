import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Page1 extends StatelessWidget {
  final VoidCallback onNextPressed;

  Page1({required this.onNextPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Column(
        children: [
          SizedBox(height: 150),
          LottieBuilder.asset('assets/images/gear.json',height: 250,width: 250,fit: BoxFit.fill),
          Padding(padding: EdgeInsets.all(20)),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Text(
              "Search job easier and more effective ",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 23),
            child: Text(
              'Make your experience of searching jobs more easier and more effective',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 19,
              ),
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(45.0),
            child: ElevatedButton(
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
          ),
        ],
      ),
    );
  }
}