import 'package:flutter/material.dart';
import 'package:untitled3/bottom%20tab/contact/contactpage1.dart';
import 'package:untitled3/bottom%20tab/help/help.dart';
import 'package:untitled3/bottom%20tab/home/home.dart';
import 'package:untitled3/bottom%20tab/phone/phone.dart';
import 'package:untitled3/bottom%20tab/search/search.dart';


class Bot2 extends StatelessWidget {
  const Bot2({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Bot1(),
    );
  }
}

class Bot1 extends StatefulWidget {
  const Bot1({super.key});

  @override
  State<Bot1> createState() => _Bot1State();
}

class _Bot1State extends State<Bot1> {
  int select=0;
  final List<Widget> pages=[
    Homepage1(),
    Searchpage1(),
    Helppage1(),
    Phonepage1(),
    Contactpage1()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[select],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: select,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.green,
        onTap: (value) {
          setState(() {
            select=value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Tab 1"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Tab 2"),
          BottomNavigationBarItem(icon: Icon(Icons.help),label: "Tab 3"),
          BottomNavigationBarItem(icon: Icon(Icons.phone),label: "Tab 4"),
          BottomNavigationBarItem(icon: Icon(Icons.contact_mail),label: "Tab 5"),
        ],
      ),
    );
  }
}
void main()
{
  runApp(Bot2());
}