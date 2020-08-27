import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadImage extends StatefulWidget {
  @override
  _UploadImageState createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {

  File imageFile;
  _opengalerie(BuildContext context) async{

    var  picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() { imageFile = picture;});
    Navigator.of(context).pop();
  }

  _opencamera(BuildContext context) async{

    var  picture = await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState(() { imageFile = picture;});

  }

  Future<void> _showChoiseDialogue(BuildContext context){
    return showDialog(context: context, builder: (BuildContext){
      return AlertDialog(
        title: Text("Faite un choix"),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text("Galerie"),
                onTap: (){
                  _opengalerie(context);
                },
              ),
              Padding(padding: EdgeInsets.all(8.0)),
              GestureDetector(
                child: Text("Appareil photo"),
                onTap: (){
                  _opencamera(context);
                },
              )
            ],
          ),
        ),
      );
    });
  }

  Widget _decideImageView(BuildContext context){
    if(imageFile == null){
      return Text("");
    } else {
      return Image.file(imageFile, width: 400,height: 400, );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: const Color(0xFFE9E9E9),
        appBar: new AppBar(
          elevation: 0.1,
          backgroundColor: Colors.white54,
          title: Image.asset("assets/g.png", fit: BoxFit.cover),

        ),

        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _decideImageView(context),
              RaisedButton(onPressed: (){
                _showChoiseDialogue(context);
              },
                child: Text("Joindre la photo du permis"),)
            ],
          ),

        )

    );
  }
}
