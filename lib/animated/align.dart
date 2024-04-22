import 'package:flutter/material.dart';

class AnimatedAlignExample extends StatefulWidget {
  @override
  _AnimatedAlignExampleState createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
  bool _isAlignedRight = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Align Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder(
              tween: AlignmentTween(
                begin: Alignment.center,
                end: _isAlignedRight ? Alignment.centerRight : Alignment.centerLeft,
              ),
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              builder: (_, Alignment alignment, __) {
                return AnimatedAlign(
                  alignment: alignment,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isAlignedRight = !_isAlignedRight;
                });
              },
              child: Text(_isAlignedRight ? 'Align Left' : 'Align Right'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AnimatedAlignExample(),
  ));
}