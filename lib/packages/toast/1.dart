import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main(){
  runApp(Toa1());
}

class Toa1 extends StatefulWidget {
  const Toa1({super.key});

  @override
  State<Toa1> createState() => _Toa1State();
}

class _Toa1State extends State<Toa1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
body: Center(
  child: ElevatedButton(
      onPressed:  () {
    Fluttertoast.showToast(msg: "This is a toast",
      gravity:ToastGravity.TOP,
    );
  }, child: Text("Toast")),
),
      ),
    );
  }
}
