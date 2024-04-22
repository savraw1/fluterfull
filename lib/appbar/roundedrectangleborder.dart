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
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(88)
            )
          ),
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
