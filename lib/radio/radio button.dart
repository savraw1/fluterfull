import 'package:flutter/material.dart';

class App1 extends StatefulWidget {
  const App1({super.key});

  @override
  State<App1> createState() => _App1State();
}

class _App1State extends State<App1> {
  String a="";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio(
                value:"o",
                groupValue: a,
                onChanged: (value){
                setState(() {
                a=value.toString();
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