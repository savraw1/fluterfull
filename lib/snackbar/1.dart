import 'package:flutter/material.dart';

class Snack1 extends StatefulWidget {
  const Snack1({super.key});

  @override
  State<Snack1> createState() => _Snack1State();
}

class _Snack1State extends State<Snack1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Builder(
            builder: (context) {
              return ElevatedButton(
                onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Error 404"))
                  );
                },
                child: Text("Send"),
              );
            }
          ),
        ),
      ),
    );
  }
}
void main()
{
  runApp(Snack1());
}