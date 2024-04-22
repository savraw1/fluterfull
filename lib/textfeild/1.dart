import 'package:flutter/material.dart';

void main()
{
  runApp(Textfeilddd());
}

class Textfeilddd extends StatefulWidget {
  const Textfeilddd({super.key});

  @override
  State<Textfeilddd> createState() => _TextfeildddState();
}

class _TextfeildddState extends State<Textfeilddd> {
  bool obscr=false;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            TextField(

            maxLines: 4,
             decoration: InputDecoration(
              labelText: "User name",
              hintText: "enter your name",
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder()
            ),
            ),
            SizedBox(height: 20,),
             TextField(
              obscureText: obscr,
              decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "enter your Pwd",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(onPressed:(){
                    setState(() {
                      obscr=! obscr;
                    });
                  } , icon: Icon(obscr? Icons.visibility_off : Icons.visibility)),
                  border: OutlineInputBorder(

                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
