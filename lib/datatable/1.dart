import 'package:flutter/material.dart';

class Table extends StatefulWidget {
  const Table({super.key});

  @override
  State<Table> createState() => _TableState();
}

class _TableState extends State<Table> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: DataTable(
              columns: [
            DataColumn(label: Text("Name")),
            DataColumn(label: Text("Age")),
            DataColumn(label: Text("Location"))
          ],
              rows: [
                DataRow(cells: [
                  DataCell(Text("John")),
                  DataCell(Text("22")),
                  DataCell(Text("Delhi"))
                ]),
                DataRow(cells: [
                  DataCell(Text("Rebecca")),
                  DataCell(Text("23")),
                  DataCell(Text("Chennai"))
                ]),
                DataRow(cells: [
                  DataCell(Text("Johnson")),
                  DataCell(Text("25")),
                  DataCell(Text("Bangalore"))
                ]),
              ]),
        )
      ),
    );
  }
}
void main()
{
  runApp(Table());
}