import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedListExample(),
    );
  }
}

class AnimatedListExample extends StatefulWidget {
  @override
  _AnimatedListExampleState createState() => _AnimatedListExampleState();
}

class _AnimatedListExampleState extends State<AnimatedListExample> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  List<String> _items = ['Item 1', 'Item 2', 'Item 3'];
  int _counter = 4;

  void _addItem() {
    final int index = _items.length;
    _items.add('Item $_counter');
    _listKey.currentState!.insertItem(index, duration: Duration(milliseconds: 500));
    _counter++;
  }

  void _removeItem(int index) {
    String removedItem = _items.removeAt(index);
    _listKey.currentState!.removeItem(
      index,
          (context, animation) => buildListItem(removedItem, animation),
      duration: Duration(milliseconds: 500),
    );
  }

  Widget buildListItem(String item, Animation<double> animation) {
    return SizeTransition(
      sizeFactor: animation,
      child: ListTile(
        title: Text(item),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: () => _removeItem(_items.indexOf(item)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated List Example'),
      ),
      body: AnimatedList(
        key: _listKey,
        initialItemCount: _items.length,
        itemBuilder: (context, index, animation) {
          return buildListItem(_items[index], animation);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addItem,
        child: Icon(Icons.add),
      ),
    );
  }
}