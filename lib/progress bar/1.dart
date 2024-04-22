import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Progress Bar Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyProgressBar(),
    );
  }
}

class MyProgressBar extends StatefulWidget {
  @override
  _MyProgressBarState createState() => _MyProgressBarState();
}

class _MyProgressBarState extends State<MyProgressBar> {
  double _progressValue = 0.0;

  void _updateProgress() {
    setState(() {
      _progressValue += 0.1;
      if (_progressValue >= 1.0) {
        _progressValue = 0.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Progress Bar Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircularProgressIndicator(
              value: _progressValue,
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _updateProgress,
              child: Text('Update Progress'),
            ),
          ],
        ),
      ),
    );
  }
}
