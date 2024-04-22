import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<Offset> _animation;
  double _X = 0.0;
  double _Y = 0.0;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _animation = Tween<Offset>(
      begin: Offset(0, 0),
      end: Offset(0, -0.25),
    ).animate(_controller);
  }

  void _moveContainer(double x, double y) {
    setState(() {
      _X = x;
      _Y = y;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Stack(
        children: [
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return AnimatedPositioned(
                duration: Duration(milliseconds: 500),
                left: _X,
                top: _Y,
                child: Container(
                  child: Icon(Icons.emoji_emotions,size: 50,color: Colors.black),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue),
                  width: 100,
                  height: 100,
                ),
              );
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.black),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
                    onPressed: () => _moveContainer(67.5, 150),
                    child: Text('Move here',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(width: 100),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
                    onPressed: () => _moveContainer(282.5, 150),
                    child: Text('Move here',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              SizedBox(height: 200),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
                    onPressed: () => _moveContainer(67.5, 400),
                    child: Text('Move here',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(width: 100),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
                    onPressed: () => _moveContainer(282.5, 400),
                    child: Text('Move here',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
