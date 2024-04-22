import 'package:flutter/material.dart';

void main()
{
  runApp(App1());
}
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
        appBar: AppBar(
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(20),
                topLeft: Radius.circular(20),
                topRight: Radius.circular(10))
          ),
          title: Text("Rectangle border", style: TextStyle(color: Colors.white),),
            backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
