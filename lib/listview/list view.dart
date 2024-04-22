import 'package:flutter/material.dart';

class List1 extends StatefulWidget {
  const List1({super.key});

  @override
  State<List1> createState() => _List1State();
}

class _List1State extends State<List1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            ListTile(
              title: Text("Alarm 1"),
              leading: Icon(Icons.alarm),
              subtitle: Text("8:45 AM"),
            ),
            ListTile(
              title: Text("Alarm 2"),
              leading: Icon(Icons.alarm),
              subtitle: Text("9:30 AM"),
            ),
            ListTile(
              title: Text("Alarm 3"),
              leading: Icon(Icons.alarm),
              subtitle: Text("10:30 AM"),
            )
          ],
        ),
      ),
    );
  }
}
void main()
{
  runApp(List1());
}