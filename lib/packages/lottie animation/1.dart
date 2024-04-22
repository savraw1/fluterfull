import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';

class Lot1 extends StatelessWidget {
  const Lot1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Lottie.network("https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json"),
            Lottie.asset("assets/images/coffee.json")
          ],
        ),
      ),
    );
  }
}
void main(){
  runApp(Lot1());
}