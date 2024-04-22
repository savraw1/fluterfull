import 'package:flutter/material.dart';

void main()
{
  runApp(Abc());
}
class Abc extends StatefulWidget {
  const Abc({super.key});

  @override
  State<Abc> createState() => _AbcState();
}

class _AbcState extends State<Abc> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Futura Labs"),
          titleTextStyle: TextStyle(
            fontSize: 22,
            color: Colors.white),
          backgroundColor: Colors.purple,
          leading: Text(" Learn life"),
        ),
        body: Center(
          child: Text("App first"),

        ),
      ),
    );
  }
}
