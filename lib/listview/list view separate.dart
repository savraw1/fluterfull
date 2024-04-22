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
        body: ListView.separated(
          itemCount: 5,
          itemBuilder: (context,index){
            return ListTile(
              title: Text("Item ${index+1}"),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider();
    },
        ),
      ),
    );
  }
}
void main()
{
  runApp(List1());
}