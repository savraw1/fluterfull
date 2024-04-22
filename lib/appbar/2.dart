import 'package:flutter/material.dart';

void main()
{
  runApp(App1());
}

class App1 extends StatelessWidget {
  const App1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: App2(),
    );
  }
}
class App2 extends StatefulWidget {
  const App2({super.key});

  @override
  State<App2> createState() => _App2State();
}

class _App2State extends State<App2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram"),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
    );
  }
}
