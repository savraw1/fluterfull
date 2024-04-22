import 'package:flutter/material.dart';

class App1 extends StatefulWidget {
  const App1({super.key});

  @override
  State<App1> createState() => _App1State();
}

class _App1State extends State<App1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          backgroundColor: Colors.green,
          actions: [
            PopupMenuButton(itemBuilder:
            (BuildContext context)=>
            [
              PopupMenuItem(child: Text("Settings"),
              value: "1",
              onTap: () {
              },),
              PopupMenuItem(child: Text("About"),
              value: "2",
              onTap: (){}),
              PopupMenuItem(child: Text("Backup"),
                value: "3",
                onTap: () {
                },),
              PopupMenuItem(child: Text("Settings"),
                value: "4",
                onTap: () {
                },),
              PopupMenuItem(child: Text("Settings"),
                value: "5",
                onTap: () {
                },),
            ],
              onSelected: (value) {
                print(value);
              },
            )
          ],
        ),
      ),
    );
  }
}
void main()
{
  runApp(App1());
}