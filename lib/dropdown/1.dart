import 'package:flutter/material.dart';

class D1 extends StatefulWidget {
  const D1({super.key});

  @override
  State<D1> createState() => _D1State();
}

class _D1State extends State<D1> {
  String? select = 'Select your state';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Enter option to be selected: ${select ?? ""}"),
            DropdownButton(
                value: select,
                items: ["Select your state", "Option 1", "Option 2", "Option 3"]
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    select = newValue;
                  });
                })
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(D1());
}
