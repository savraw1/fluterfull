import 'package:flutter/material.dart';

class Time1 extends StatelessWidget {
  const Time1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Time2(),
    );
  }
}

class Time2 extends StatefulWidget {
  const Time2({super.key});

  @override
  State<Time2> createState() => _Time2State();
}

class _Time2State extends State<Time2> {
  TimeOfDay selected = TimeOfDay.now();
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if(picked!=null && picked !=selected)
      {
        setState(() {
          selected=picked;
        });
      }
  }
String _formatTime(TimeOfDay timeOfDay){
    final hour = timeOfDay.hourOfPeriod;
    final minute = timeOfDay.minute.toString().padLeft(2,'0');
    final period = timeOfDay.period == DayPeriod.am? 'AM':'PM';
    return '$hour:$minute $period';
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: TextEditingController(text: _formatTime(selected)),
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              suffixIcon: IconButton(onPressed: ()=> _selectTime(context), icon: Icon(Icons.timer))
            ),
          )
        ],
      ),
    );
  }
}
void main()
{
  runApp(Time1());
}