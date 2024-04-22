import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  const Button1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Image.asset("assets/images/Pred.jpg",height: 60,width: 70,),
            Image.network("https://platinumlist.net/guide/wp-content/uploads/2023/03/IMG-worlds-of-adventure.webp")
          ],
        ),
      ),
    );
  }
}
void main()
{
  runApp(Button1());
}