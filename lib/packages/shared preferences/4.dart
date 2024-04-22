import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Theme1 extends StatefulWidget {
  const Theme1({super.key});

  @override
  State<Theme1> createState() => _Theme1State();
}

class _Theme1State extends State<Theme1> {

  bool a = false;
  bool turn=false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: turn? Colors.black:Colors.white,
        appBar: AppBar(
            backgroundColor: turn? Colors.black:Colors.white,
            title: Text("Theme Preference",style: TextStyle(color: turn? Colors.white:Colors.black),)),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Toggle theme preference:",style: TextStyle(fontSize: 20,color: turn? Colors.white:Colors.black)),
              Switch(
                activeColor: Colors.deepPurple,
                value: a, onChanged: (value) {
                setState(() {
                  a=value!;
                  turn=!turn;
                });
              }),
              SizedBox(height: 25),
              Text("Current Theme:",style: TextStyle(fontSize: 20,color: turn? Colors.white:Colors.black)),
              Text(turn? "Dark Theme":"Light Theme",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: turn? Colors.white:Colors.black))
            ],
          ),
        ),
      ),
    );
  }
}
void main()
{
  runApp(Theme1());
}