import 'package:flutter/material.dart';
import 'package:untitled3/top%20tab/tab1.dart';
import 'package:untitled3/top%20tab/tab2.dart';
import 'package:untitled3/top%20tab/tab3.dart';
class App2 extends StatelessWidget {
  const App2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: App1(),
    );
  }
}

class App1 extends StatelessWidget {
  const App1({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
        child: Scaffold(
        appBar: AppBar(
          title: Text("Example"),
          backgroundColor: Colors.blue,
          bottom: TabBar(tabs: [
           Tab(child: Text("Title 1")),
           Tab(child: Text("Title 2")),
           Tab(child: Text("Title 3"))
          ]
          ),
        ),
          body: TabBarView(
              children: [
            Tab1(),
            Tab2(),
            Tab3()
          ]),
        )
    );
  }
}

void main()
{
  runApp(App2());
}