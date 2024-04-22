import 'package:flutter/material.dart';

class Show1 extends StatefulWidget {
  const Show1({super.key});

  @override
  State<Show1> createState() => _Show1State();
}

class _Show1State extends State<Show1> {
  bool showAll = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Show all example"),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        showAll = !showAll;
                      });
                    },
                    child: Text(showAll ? "Hide All" : "Show All")),
                SizedBox(
                  height: 35,),
                  AnimatedContainer(duration: Duration(milliseconds: 500),
                  width: showAll ? 200:50,
                  height: showAll ? 200:50,
                  color: Colors.red,
                ),
                SizedBox(
                  height: 35),
                  AnimatedContainer(duration: Duration(milliseconds: 500),
                    width: showAll ? 200:50,
                    height: showAll ? 200:50,
                    color: Colors.orange,
                ),
                SizedBox(
                  height: 35,),
                  AnimatedContainer(duration: Duration(milliseconds: 500),
                    width: showAll ? 200:50,
                    height: showAll ? 200:50,
                    color: Colors.yellow,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
void main()
{
  runApp(Show1());
}