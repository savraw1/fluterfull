import 'package:flutter/material.dart';

class List1 extends StatefulWidget {
  const List1({super.key});

  @override
  State<List1> createState() => _List1State();
}

class _List1State extends State<List1> {
  final List <String> items=["One","Two","Three","Four","Five"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            subtitle: Text("Item ${index}"),
            onTap: (){
             },
          );
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