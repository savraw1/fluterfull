import 'package:flutter/material.dart';

class SSSS extends StatelessWidget {
  const SSSS({super.key});

  @override
  Widget build(BuildContext context) {
    String name ="ghjk";
    return  Scaffold(
      body: Column(
        children: [
          Text(name),
          ElevatedButton(onPressed: (){}, child: Text("sumit"))
        ],
      ),
    );
  }
}
