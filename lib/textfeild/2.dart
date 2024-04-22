import 'package:flutter/material.dart';

void main()
{
  runApp(App1());
}

class App1 extends StatefulWidget {
  const App1({super.key});

  @override
  State<App1> createState() => _App1State();
}

class _App1State extends State<App1> {
  bool obs=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Instagram Pro", style: TextStyle(
              color: Colors.white,fontSize: 22),textAlign: TextAlign.left),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                label: Text("Username"),
                 prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder()
              ),
            ),
            TextField(
              obscureText: obs,
              decoration: InputDecoration(
                label: Text("Password"),
                 prefixIcon: Icon(Icons.password),
                suffixIcon: IconButton(onPressed: (){
                  setState(() {
                    obs=!obs;
                  });
                  },icon: Icon(obs? Icons.visibility_off:Icons.visibility)
              ),
                  border: OutlineInputBorder(),
            ),
            ),
            TextField(
                obscureText: obs,
                decoration: InputDecoration(
                   labelText: "Enter password",
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      obs=!obs;
                    });
                  },icon: Icon(obs? Icons.visibility_off:Icons.visibility)
                  ),
                  border: OutlineInputBorder()
                )
            ),
            TextField(
              decoration: InputDecoration(
                label: Text("Enter email"),
                 prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder()
              ),
            ),
            TextField(
              decoration: InputDecoration(
                 labelText: "Phone number",
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder()
              ),
              )
          ],
        ),
      ),
    );
  }
}