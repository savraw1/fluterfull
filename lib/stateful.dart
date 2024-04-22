import 'package:flutter/material.dart';

class Statefullwid extends StatefulWidget {
  const Statefullwid({super.key});

  @override
  State<Statefullwid> createState() => _StatefullwidState();
}

class _StatefullwidState extends State<Statefullwid> {
  String name="gggg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(name),
          ElevatedButton(onPressed: (){
            setState(() {
              name="jjjjj";
            });
          }, child: Text("sbmit"))
        ],
      ),
    );

  }
}
