import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled3/map/2.dart';

class img extends StatefulWidget {
  const img({super.key});

  @override
  State<img> createState() => _imgState();
}

class _imgState extends State<img> {

  File? _image;
  final picker = ImagePicker();

  Future<void> pickImage(ImageSource source) async {
    final pickedFile = await picker.pickImage(source: source);
    setState(() {
      if(pickedFile != null)
        {
          _image =File(pickedFile.path);
        }
      else
        {
          print("No image selected");
        }
    });
  }
  void delete(){
    setState(() {

      _image=null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 100),
              Stack(
                children:[
                  CircleAvatar(
                  radius: 50,
                  backgroundImage: _image != null? FileImage(_image!):null,
                  child: _image ==null ? Icon(Icons.person,size: 50):null,
                ),
                  if(_image !=null )
                    Positioned(
                      top: 1,
                        right: 1,
                        child: IconButton(onPressed: delete,
                            icon: Icon(Icons.delete,color: Colors.orange,)))
          ]
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: (){
                    pickImage(ImageSource.gallery);
                  }, child: Text("Gallery")),
                  TextButton(onPressed: (){
                    pickImage(ImageSource.camera);
                  }, child: Text("Camera"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

void main()
{
  runApp(img());
}