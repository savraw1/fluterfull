import 'package:flutter/material.dart';

class AnimatedPositionedExample extends StatefulWidget {
  @override
  _AnimatedPositionedExampleState createState() => _AnimatedPositionedExampleState();
}

class _AnimatedPositionedExampleState extends State<AnimatedPositionedExample> {
  bool _isMoved = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Positioned Example'),
      ),
      body: Center(
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: Duration(seconds: 1),
              curve: Curves.easeInOut,
              left: _isMoved ? 100 : 0,
              top: _isMoved ? 100 : 0,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isMoved = !_isMoved;
          });
        },
        child: Icon(Icons.play_arrow),
      ),

    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AnimatedPositionedExample(),
  ));
}