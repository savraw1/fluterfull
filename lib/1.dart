import 'package:flutter/material.dart';

class App1 extends StatefulWidget {
  const App1({super.key});

  @override
  State<App1> createState() => _App1State();
}

class _App1State extends State<App1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text("fghhdfggfgh"),
                ElevatedButton(onPressed: (){}, child: Text("abc")),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("fgggggggggggggg"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
void main()
{
  runApp(App1());
}