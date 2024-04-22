import 'package:flutter/material.dart';

class Button1 extends StatefulWidget {
  const Button1({super.key});

  @override
  State<Button1> createState() => _Button1State();
}

class _Button1State extends State<Button1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          OutlinedButton(onPressed: (){}, child: Text("Sign in"))
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