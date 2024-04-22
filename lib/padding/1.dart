import 'package:flutter/material.dart';

class Text1 extends StatelessWidget {
  const Text1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("data"),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 100,top: 33),
            child: Text("data"),
          ),

        ],
      ),
      ),
    );
  }
}
void main()
{
  runApp(Text1());
}