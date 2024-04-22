import 'package:flutter/material.dart';
class Date2 extends StatelessWidget {
  const Date2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Date1(),
    );
  }
}


class Date1 extends StatefulWidget {
  const Date1({super.key});

  @override
  State<Date1> createState() => _Date1State();
}

class _Date1State extends State<Date1> {
  DateTime selected=DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked=await showDatePicker(
        context: context,
        initialDate: selected,
        firstDate: DateTime(1970),
        lastDate: DateTime(2100),
    );
    if(picked!=null && picked !=selected)
      {
        setState(() {
          selected=picked;
        });
      }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: TextEditingController(
                text: "${selected.day}/${selected.month}/${selected.year}"
              ),
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                suffixIcon: IconButton(onPressed: ()=> _selectDate(context), icon: Icon(Icons.calendar_month))
              ),
            )
          ],
        ),

    );
  }
}
void main()
{
  runApp(Date2());
}