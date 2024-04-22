import 'package:flutter/material.dart';
import 'package:untitled3/bottom/bottom/1.dart';

class Tab1 extends StatefulWidget {
  int selectedIndex=0;
  Tab1(this.selectedIndex);

  @override
  State<Tab1> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  int _selectedIndex=0;
  int initial=0;

  void _onItemTapped(int index){
    setState(() {
      widget.selectedIndex=index;
      _selectedIndex=widget.selectedIndex;
    });
  }
  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
  }

  @override
  void initState(){
    _onItemTapped(widget.selectedIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: IndexedStack(
        index: widget.selectedIndex,
        children: [
          for(final tabItem in Nav.items) tabItem.page,
        ],
      ),
      bottomNavigationBar: SizedBox(
        child: BottomNavigationBar(
          selectedLabelStyle: const TextStyle(),
          unselectedLabelStyle: const TextStyle(),
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,

          backgroundColor: Colors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.dashboard),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.screen_search_desktop_outlined),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.payment),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: '')
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}