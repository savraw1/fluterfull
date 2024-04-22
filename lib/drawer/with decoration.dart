import 'package:flutter/material.dart';

class Draw1 extends StatefulWidget {
  const Draw1({super.key});

  @override
  State<Draw1> createState() => _Draw1State();
}

class _Draw1State extends State<Draw1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/Pred.jpg")),
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Text("Settings")),
              ListTile(
                title: Text("System"),
                subtitle: Text("Properties"),
                leading: Text("1"),
                trailing: Text("+"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
void main()
{
  runApp(Draw1());
}