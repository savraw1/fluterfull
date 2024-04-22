import 'package:flutter/material.dart';
void main()
{
  runApp(Image1());
}
class Image1 extends StatelessWidget {
  const Image1({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage:AssetImage("assets/images/Pred.jpg") ,
            )
          ],
        ),
      ),
    );
  }
}
