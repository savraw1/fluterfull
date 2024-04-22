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
        title: Text("Android 15", textAlign: TextAlign.start,style: TextStyle(fontSize: 22, color: Colors.white)),
        backgroundColor: Colors.black,
      ),
        body: Column(

          children: [
            Text("ABC", style: TextStyle(fontSize: 33,color: Colors.green)),
            Text("DEF", style: TextStyle(fontSize: 33,color: Colors.blue)),
            Text("GHI", style: TextStyle(fontSize: 33,color: Colors.red))
          ],
        ),
      ),
    );
  }
}
