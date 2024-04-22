import 'package:flutter/material.dart';

class AnimatedSizeExample extends StatefulWidget {
  @override
  _AnimatedSizeExampleState createState() => _AnimatedSizeExampleState();
}

class _AnimatedSizeExampleState extends State<AnimatedSizeExample> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Size Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              child: AnimatedSize(
                duration: Duration(milliseconds: 500),

                curve: Curves.easeInOut,
                child: Container(
                  color: Colors.blue,
                  width: _isExpanded ? 200 : 100,
                  height: _isExpanded ? 200 : 100,
                  child: Center(
                    child: Text(
                      _isExpanded ? 'Expanded' : 'Collapsed',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
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
    home: AnimatedSizeExample(),
  ));
}