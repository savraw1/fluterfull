import 'package:flutter/material.dart';

class V2 extends StatelessWidget {
  const V2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: V3(),
    );
  }
}
class V3 extends StatefulWidget {
  const V3({super.key});

  @override
  State<V3> createState() => _V3State();
}

class _V3State extends State<V3> {
  bool turn=true;

  final _formkey=GlobalKey<FormState>();
  TextEditingController _email=TextEditingController();
  TextEditingController _password=TextEditingController();
  TextEditingController _cpassword=TextEditingController();

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
  String select="Select your Country";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child : Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100,bottom: 25),
            child: Align(
              alignment: Alignment.center,
                child: Text("Sign Up",style: TextStyle(fontSize: 25))),
          ),
          SizedBox(
            height: 100,
            width: 300,
            child: TextFormField(
              controller: _email,
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
              validator: (value){
                if(value==null || value.isEmpty)
                  {
                    return "Please enter your email";
                  }
                else if(!value.contains("@"))
                  {
                    return "Please enter a valid email";
                  }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: SizedBox(
              height: 100,
              width: 300,
              child: TextFormField(
                obscureText: turn,
                controller: _password,
                decoration: InputDecoration(
                  suffix: turn?
                  InkWell(
                    onTap: (){
                      turn=!turn;
                      setState(() {
                      });
                    },
                    child: Text("Show"),
                  ):
                      InkWell(
                        onTap: (){
                          turn=!turn;
                          setState(() {
                          });
                        },
                        child: Text("Hide"),
                      ),
                  labelText: "Password",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
                validator: (value){
                  if(value==null || value.isEmpty)
                  {
                    return "Please enter your password";
                  }
                  else if(value.length<=8)
                  {
                    return "Password length must be greater than 8 characters";
                  }
                  return null;
                },
              ),
            ),
          ),SizedBox(
            height: 100,
            width: 300,
            child: TextFormField(
              obscureText: turn,
              controller: _cpassword,
              decoration: InputDecoration(
                suffix: turn?
                InkWell(
                  onTap: (){
                    turn=!turn;
                    setState(() {
                    });
                  },
                  child: Text("Show"),
                ):
                InkWell(
                  onTap: (){
                    turn=!turn;
                    setState(() {
                    });
                  },
                  child: Text("Hide"),
                ),
                labelText: "Confirm password",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
              validator: (value){
                if(value==null || value.isEmpty)
                {
                  return "Please enter your password";
                }
                else if(value.length<=8)
                {
                  return "Password length must be greater than 8 characters";
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: SizedBox(
              height: 100,
              width: 300,
              child: TextField(
                  controller: TextEditingController(text: "${selected.day}/${selected.month}/${selected.year}"),
                  decoration: InputDecoration(
                    labelText: "Date of Birth",
                    suffixIcon: IconButton(onPressed: ()=>_selectDate(context), icon: Icon(Icons.calendar_month)),
                  ),
                ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: SizedBox(
              height: 50,
              width: 300,
              child: DropdownButton(
                value: select,
                  items: ["Select your Country","India","China","Pakistan","Nepal","Afghanistan"].map<DropdownMenuItem<String>>((String value){
                    return DropdownMenuItem(
                        value:value,
                        child: Text(value));
                  }).toList(),
                  onChanged: (String? newValue){
                  setState(() {
                    select=newValue!;
                  });
              }),
            ),
          ),
          SizedBox(
            height: 50,
            width: 300,
            child: ElevatedButton(
               style: ButtonStyle(
                 backgroundColor: MaterialStatePropertyAll(Colors.blue)
               ),
                onPressed: (){
              if(_formkey.currentState!.validate())
                {
                  String email=_email.text;
                  String password=_password.text;
                  String cpassword=_cpassword.text;
                  print("Email: $email");
                  print("Password: $password");
                  print("Confirm password: $_cpassword");
                }
            }, child: Text("SUBMIT",style: TextStyle(color: Colors.white),)),
          )
        ],
      ),
      )
    );
  }
}
void main()
{
  runApp(V2());
}