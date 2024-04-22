import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late SharedPreferences _prefs;
  TextEditingController _controller = TextEditingController();
  String _storedText = '';

  @override
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
      _storedText = _prefs.getString('storedText') ?? '';
    });
  }

  void _saveData() {
    String textToSave = _controller.text;
    _prefs.setString('storedText', textToSave);
    setState(() {
      _storedText = textToSave;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Preferences Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter text:',
              style: TextStyle(fontSize: 18),
            ),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Type here...',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveData,
              child: Text('Save'),
            ),
            SizedBox(height: 20),
            Text(
              'Stored Text:',
              style: TextStyle(fontSize: 18),
            ),
            Text(_storedText),
          ],
        ),
      ),
    );
  }
}