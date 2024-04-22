import 'package:flutter/material.dart';


void main(){
  runApp(Myappbar());
}

class Myappbar extends StatefulWidget {
  const Myappbar({super.key});

  @override
  State<Myappbar> createState() => _MyappbarState();
}

class _MyappbarState extends State<Myappbar> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: Text("appbar"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 4,
        leading:  Icon(Icons.add),

      ),
      )
    );
  }
}
