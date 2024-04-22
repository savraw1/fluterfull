import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Stepper Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyStepper(),
    );
  }
}

class MyStepper extends StatefulWidget {
  @override
  _MyStepperState createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper> {
  int _currentStep = 0;

  List<Step> steps = [
    Step(
      title: Text('Step 1'),
      content: Text('This is the content of step 1'),
      isActive: true,
    ),
    Step(
      title: Text('Step 2'),
      content: Text('This is the content of step 2'),
      isActive: true,
    ),
    Step(
      title: Text('Step 3'),
      content: Text('This is the content of step 3'),
      isActive: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Stepper Example'),
      ),
      body: Stepper(
        currentStep: _currentStep,
        onStepContinue: () {
          setState(() {
            _currentStep < steps.length - 1 ? _currentStep += 1 : null;
          });
        },
        onStepCancel: () {
          setState(() {
            _currentStep > 0 ? _currentStep -= 1 : null;
          });
        },
        steps: steps,
      ),

    );
  }
}