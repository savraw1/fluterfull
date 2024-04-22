import 'package:flutter/material.dart';

class Stack1 extends StatefulWidget {
  const Stack1({super.key});

  @override
  State<Stack1> createState() => _Stack1State();
}

class _Stack1State extends State<Stack1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stack example"),
        ),
        body: Stack(
          children: [
            Positioned(
              top: 50,
                left: 50,
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.blue,
                  height: 100,
                  width: 100,
                )
            ),
            Positioned(
                top: 100,
                left: 100,
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.red,
                  height: 100,
                  width: 100,
                ),
            ),
            Positioned(
              top: 150,
              left: 150,
              child: Container(
                alignment: Alignment.center,
                color: Colors.yellow,
                height: 100,
                width: 100,
              ),
            ),
            Positioned(
              top: 200,
              left: 200,
              child: Container(
                alignment: Alignment.center,
                color: Colors.orange,
                height: 100,
                width: 100,
              ),
            ),
            Positioned(
              top: 250,
              left: 250,
              child: Container(
                alignment: Alignment.center,
                color: Colors.deepPurple,
                height: 100,
                width: 100,
              ),
            ),
            Positioned(
              top: 300,
              left: 200,
              child: Container(
                alignment: Alignment.center,
                color: Colors.indigo,
                height: 100,
                width: 100,
              ),
            ),
            Positioned(
              top: 350,
              left: 150,
              child: Container(
                alignment: Alignment.center,
                color: Colors.cyan,
                height: 100,
                width: 100,
              ),
            ),
            Positioned(
              top: 400,
              left: 100,
              child: Container(
                alignment: Alignment.center,
                color: Colors.deepOrange,
                height: 100,
                width: 100,
              ),
            ),
            Positioned(
              top: 450,
              left: 50,
              child: Container(
                alignment: Alignment.center,
                color: Colors.grey,
                height: 100,
                width: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
void main(){
  runApp(Stack1());
}