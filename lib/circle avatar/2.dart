import 'package:flutter/material.dart';

class App1 extends StatefulWidget {
  const App1({super.key});

  @override
  State<App1> createState() => _App1State();
}

class _App1State extends State<App1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: Column(
        children: [
          CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/images/Pred.jpg"))
        ],
      ),
      ),
    );
  }
}
void main()
{
  runApp(App1());
}