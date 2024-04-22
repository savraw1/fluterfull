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
        children: [
          Image.network("https://media.gettyimages.com/id/621827458/photo/celebrating-our-achievements-together.jpg?s=1024x1024&w=gi&k=20&c=uYWoMpNJJCKr408AkEjrua7CCo3kMiotcLtXmzUsOI0=")
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