import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Shared1 extends StatefulWidget {
  const Shared1({super.key});

  @override
  State<Shared1> createState() => _Shared1State();
}

class _Shared1State extends State<Shared1> {
  bool a=false;

  late SharedPreferences _prefs;
  TextEditingController _text = TextEditingController();
  TextEditingController _integer = TextEditingController();
  TextEditingController _list = TextEditingController();

  String _storedText = '';
  int _storedInteger = 0;
  List <String> _storedList = [];
  bool _storedBool=false;

  void initState() {
    super.initState();
    _initSharedPreferences();
  }

  void _initSharedPreferences() async {
    _prefs = await SharedPreferences.getInstance();
    _loadText();
    _loadInteger();
    _loadList();
    _loadBool();
  }

  void _loadText() {
    setState(() {
      _storedText = _prefs.getString('storedText') ?? '';
    });
  }
  void _loadInteger() {
    setState(() {
      _storedInteger = _prefs.getInt('storedInteger') ?? 0;
    });
  }
  void _loadBool() {
    setState(() {
      _storedBool = _prefs.getBool('storedBool') ?? false;
    });
  }
  void _loadList() {
    setState(() {
      _storedList = _prefs.getStringList('storedInteger') ?? [];
    });
  }

  void _saveText() {
    String text = _text.text;
    _prefs.setString('storedText', text);
    setState(() {
      _storedText = text;
    });
  }
  void _saveInteger(int value) {
    _prefs.setInt('storedInteger', value);
    setState(() {
      _storedInteger = value;
    });
  }
  void _saveBool(bool value) {
    _prefs.setBool('storedBool', value);
    setState(() {
      _storedBool = value;
    });
  }
  void _saveList(List <String> list) {
    _prefs.setStringList('storedList', list);
    setState(() {
      _storedList = list;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 1.5,
          child: Scaffold(
            appBar: AppBar(title: Text("Shared Preferences Demo")),
            body: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Enter text:",style: TextStyle(fontSize: 20)),
                  TextField(
                    controller: _text,
                    decoration: InputDecoration(
                      hintText: "Type here...",
                      hintStyle: TextStyle(fontSize: 18,color: Colors.black)
                    ),
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(onPressed: _saveText, child: Text("Save Text",style: TextStyle(color: Colors.black))),
                  SizedBox(height: 15),
                  Text("Stored Text: $_storedText",style: TextStyle(fontSize: 20)),
                  SizedBox(height: 25),
                  Text("Enter an integer:",style: TextStyle(fontSize: 20)),
                  TextField(
                    controller: _integer,
                    decoration: InputDecoration(
                        hintText: "Type an integer...",
                        hintStyle: TextStyle(fontSize: 18,color: Colors.black)
                    ),
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(onPressed: () {
                    int value = int.tryParse(_integer.text) ?? 0;
                    _saveInteger(value);
                  }, child: Text("Save Integer",style: TextStyle(color: Colors.black))),
                  SizedBox(height: 15),
                  Text("Stored Integer: $_storedInteger",style: TextStyle(fontSize: 20)),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      Text("Boolean value: ",style: TextStyle(fontSize: 20)),
                      Checkbox(
                          value: a, onChanged: (value) {
                        setState(() {
                          a=value!;
                        });
                      })
                    ],
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(onPressed: () {
                    _saveBool;
                  }, child: Text("Save Boolean",style: TextStyle(color: Colors.black))),
                  SizedBox(height: 15),
                  Text("Stored value: $_storedBool",style: TextStyle(fontSize: 20)),
                  SizedBox(height: 25),
                  Text("Enter items for the list:",style: TextStyle(fontSize: 20)),
                  Row(
                    children: [
                      SizedBox(
                        width: 275,
                        child: TextField(
                          controller: _list,
                          decoration: InputDecoration(
                              hintText: "Type an item...",
                              hintStyle: TextStyle(fontSize: 18,color: Colors.black)
                          ),
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _storedList=[];
                            });
                          }, child: Text("Clear List",style: TextStyle(color: Colors.black)))
                    ],
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(onPressed: () {
                    List<String> list = _list.text.split(',');
                    _saveList(list);
                  }, child: Text("Save List",style: TextStyle(color: Colors.black))),
                  SizedBox(height: 15),
                  Text("Stored List: $_storedList",style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
void main()
{
  runApp(Shared1());
}