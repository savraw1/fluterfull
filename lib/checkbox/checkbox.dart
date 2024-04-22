import 'package:flutter/material.dart';

class App1 extends StatefulWidget {
  const App1({super.key});

  @override
  State<App1> createState() => _App1State();
}

class _App1State extends State<App1> {
  bool a=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
              value: a,
              onChanged: (value){
              setState(() {
                a=value!;
              });
              })
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