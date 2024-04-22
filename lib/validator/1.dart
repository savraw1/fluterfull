import 'package:flutter/material.dart';

class V1 extends StatefulWidget {
  const V1({super.key});

  @override
  State<V1> createState() => _V1State();
}

class _V1State extends State<V1> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Validator"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    controller:_usernameController,
                    validator: (value){
                      if(value==null || value.isEmpty){
                        return "Please enter your username";
                      }
                      else if(value.length<8)
                        {
                          return "Username must be greater than 8 characters";
                        }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    controller:_passwordController,
                    validator: (value){
                      if(value==null || value.isEmpty){
                        return "Please enter your password";
                      }
                      else if(value.length<8)
                      {
                        return "Password must be greater than 8 characters";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller:_emailController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    validator: (value){
                      if(value==null || value.isEmpty){
                        return "Please enter your email";
                      }
                      return null;
                    },
                  ),
                  ElevatedButton(onPressed: (){
                    if(_formkey.currentState!.validate()) {
                      String username = _usernameController.text;
                      String password = _passwordController.text;
                      String email = _emailController.text;
                      print("Username: $username");
                      print("Password: $password");
                      print("Email: $email");
                    }
                  }, child: Text("Submit"))
                ],
              )),
        ),
      ),
    );
  }
}
void main(){
  runApp(V1());
}