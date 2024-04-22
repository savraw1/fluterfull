import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled3/task/4.dart';

class Page3 extends StatelessWidget {
  final VoidCallback onPreviousPressed;
  final VoidCallback onNextPressed;

  Page3({required this.onPreviousPressed, required this.onNextPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Column(
        children: [
          SizedBox(height: 175),
          LottieBuilder.asset('assets/images/job.json',height: 250,width: 250,fit: BoxFit.fill),
          Padding(padding: EdgeInsets.all(20)),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Text(
              "Help find the right job with desire ",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 23),
            child: Text(
              'NetDev can help the right job with your desire',
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
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Login1()));
                  },
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