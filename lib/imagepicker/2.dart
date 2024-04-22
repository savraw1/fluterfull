import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';


class ff extends StatelessWidget {
  const ff({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: img2(),
    );
  }
}

class img2 extends StatefulWidget {
  const img2({super.key});

  @override
  State<img2> createState() => _img2State();
}

class _img2State extends State<img2> {
  File? _image;
  final picker=ImagePicker();

  Future<void> pickImage(ImageSource source) async {
    final pickedFile = await picker.pickImage(source: source);
    setState(() {
      if(pickedFile!=null)
        {
          _image = File(pickedFile.path);
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
    return Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(height: 100),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: _image!=null? FileImage(_image!):null,
                  child: _image==null? Icon(Icons.person,size: 50):null,
                ),
                SizedBox(height: 25),
                ElevatedButton(onPressed: (){
                  showDialog(context: context, builder: (BuildContext context){
                    return AlertDialog(
                       title: Text("Profile picture"),
                      content: Container(
                        height: 285,
                        child: Column(
                          children: [
                            SizedBox(),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text("Select your profile image from:")),
                            SizedBox(height: 25),
                            TextButton(onPressed:  () {
                              pickImage(ImageSource.gallery);
                            }, child: Text("Gallery")),
                            Divider(),
                            TextButton(onPressed:  () {
                              pickImage(ImageSource.camera);
                            }, child: Text("Camera")),
                            Divider(),
                            TextButton(onPressed: delete, child: Text("Remove")),
                            Divider(),
                            TextButton(onPressed:  () {
                              Navigator.pop(context);
                            }, child: Text("Cancel")),
                          ],
                        ),
                      ),
                    );
                  });
                }, child: Text("Edit profile"))
              ],
            ),
          ],
        ),

    );
  }
}

void main()
{
  runApp(ff());
}