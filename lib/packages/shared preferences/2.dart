import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Details1 extends StatefulWidget {
  const Details1({super.key});

  @override
  State<Details1> createState() => _Details1State();
}

class _Details1State extends State<Details1> {
  late SharedPreferences _prefs;

  String _storedName = '';
  String _storedAddress = '';
  String _storedEmail = '';

  TextEditingController _name = TextEditingController();
  TextEditingController _address = TextEditingController();
  TextEditingController _email = TextEditingController();

  void initState() {
    super.initState();
    _initSharedPreferences();
  }

  void _initSharedPreferences() async {
    _prefs = await SharedPreferences.getInstance();
    _loadData();
  }

  void _loadData() {
    setState(() {
      _storedName = _prefs.getString('storedName') ?? '';
      _storedAddress = _prefs.getString('storedAddress') ?? '';
      _storedEmail = _prefs.getString('storedEmail') ?? '';
    });
  }

  void _saveData() {
    String name = _name.text;
    String address = _address.text;
    String email = _email.text;
    _prefs.setString('storedName', name);
    _prefs.setString('storedAddress', address);
    _prefs.setString('storedEmail', email);
    setState(() {
      _storedName = name;
      _storedAddress = address;
      _storedEmail = email;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Text("Enter name:"),
              TextField(
                controller: _name,
              ),
              SizedBox(height: 15),
              Text("Enter address"),
              TextField(
                controller: _address,
              ),
              SizedBox(height: 15),
              Text("Enter email"),
              TextField(
                controller: _email,
              ),
              SizedBox(height: 15),
              ElevatedButton(onPressed: _saveData, child: Text("Submit")),
              SizedBox(height: 15),
              Text("Submitted details:\n"),
              Text("Name: "+_storedName),
              Text("Address: "+_storedAddress),
              Text("Email: "+_storedEmail)
            ],
          ),
        ),
      ),
    );
  }
}
void main()
{
  runApp(Details1());
}