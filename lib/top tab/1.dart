import 'package:flutter/material.dart';
class dgg extends StatelessWidget {
  const dgg ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home:App1() ,
    );
  }
}

class App1 extends StatefulWidget {
  const App1({super.key});

  @override
  State<App1> createState() => _App1State();
}

class _App1State extends State<App1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
          title: Text("Example"),
            backgroundColor: Colors.blue,
            bottom: TabBar(
                tabs:[
                  Tab(child: Text("Title 1")),
                  Tab(child: Text("Title 2")),
                  Tab(child: Text("Title 3"))
                ]
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text("ll"),
              ),
              Center(
                child: Text("kkkkkkkkkk"),
              ),
              Center(
                child: Text("uuuuuuuuuuuu"),
              )
            ],
          ),
        )
    );
  }
}
void main()
{
  runApp(dgg());
}