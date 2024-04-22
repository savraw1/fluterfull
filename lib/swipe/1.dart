import 'package:flutter/material.dart';

class Swipe1 extends StatefulWidget {
  const Swipe1({super.key});

  @override
  State<Swipe1> createState() => _Swipe1State();
}

class _Swipe1State extends State<Swipe1> {
  List<String> items=List.generate(15, (index) => "Item ${index+1}");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: ListView.builder(
        itemCount: items.length,
          itemBuilder: (context,index){
          final item=items[index];
          return Dismissible(key: Key(item),
            background: Container(
              color: Colors.red,
              child: Icon(Icons.delete,color: Colors.white),
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 20),
            ),
            direction: DismissDirection.endToStart,
            onDismissed: (direction){
            setState(() {
              items.removeAt(index);
            });
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("$item dismissed"),
                duration: Duration(seconds: 3),
                action: SnackBarAction(label: "UNDO", onPressed: (){
                  setState(() {
                    items.insert(index,item);
                  });
                })),
            );
            },
            child: ListTile(
              title: Text(item),
            ),
          );
          }
      )
      ),
    );
  }
}
void main()
{
  runApp(Swipe1());
}