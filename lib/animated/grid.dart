import 'package:flutter/material.dart';

class AnimatedGridExample extends StatefulWidget {
  @override
  _AnimatedGridExampleState createState() => _AnimatedGridExampleState();
}

class _AnimatedGridExampleState extends State<AnimatedGridExample> {
  List<Color> _colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
  ];

  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Grid Example'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: _isExpanded ? 3 : 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemCount: _colors.length,
            itemBuilder: (context, index) {
              return AnimatedOpacity(
                duration: Duration(milliseconds: 500),
                opacity: _isExpanded ? 1.0 : 0.0,
                child: Container(
                  color: _colors[index],
                ),
              );
            },
          ),
        ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isExpanded = !_isExpanded;
          });
        },
        child: Icon(_isExpanded ? Icons.arrow_back : Icons.arrow_forward),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AnimatedGridExample(),
  ));
}