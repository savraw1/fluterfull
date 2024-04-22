 import 'package:flutter/material.dart';

class Appbar1 extends StatelessWidget {
   const Appbar1({super.key});

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: Scaffold(
         appBar:  AppBar(
         title: Text("WhatsApp"),
           centerTitle: true,
           backgroundColor: Colors.green,
         )
       ),
     );
   }
 }
 void main()
 {
   runApp(Appbar1());
 }