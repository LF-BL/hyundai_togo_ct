import 'package:hyundai_togo_ct/component/imagaupload.dart';
import 'package:hyundai_togo_ct/component/message.dart';
import 'package:flutter/material.dart';
import 'package:hyundai_togo_ct/component/rdvcommercial.dart';
import 'package:hyundai_togo_ct/component/imagaupload.dart';

class RelationClient extends StatefulWidget {
  @override
  _RelationClientState createState() => _RelationClientState();
}

class _RelationClientState extends State<RelationClient> {

  Future<void> _plusdinfo(BuildContext context){
    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text("Pour plus d'info:"),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text("N° Téléphone: 22501701"),
                onTap: (){
                },
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              GestureDetector(
                child: Text("E-mail: commercial@hyundai.tg"),
                onTap: (){
                },
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              GestureDetector(
                child: Text("LAISSEZ UN MESSAGE",style: TextStyle(color: Color.fromRGBO(10, 31, 110, 1),),),
                onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context)=> new ChatScreen2())),
              )
            ],
          ),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xFFE9E9E9),
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.white54,
        title: Image.asset("assets/g.png", fit: BoxFit.cover),

      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 100,

            child: Image.asset("assets/images/homepic/contacter.jpg"),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 250,
            margin: EdgeInsets.all(12),
            color: Colors.black12,
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
                  width: double.infinity,
                  child: RaisedButton(
                    elevation: 5.0,
                    onPressed: ()=> Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context)=> new RDV_Commercial())),
                    padding: EdgeInsets.all(15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.white,
                    child: Text('Prendre rendez-vous avec un commercial',style: TextStyle(color: Color.fromRGBO(10, 31, 110, 1),letterSpacing: 1.5,fontSize: 18.0,fontWeight: FontWeight.bold,fontFamily: 'hyundai'),),),
                ),


                Container(
                  padding: EdgeInsets.symmetric(vertical: 25.0,horizontal: 20),
                  width: double.infinity,
                  child: RaisedButton(
                    elevation: 5.0,
                    onPressed: (){
                      _plusdinfo(context);
                    },
                    padding: EdgeInsets.all(15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.white,
                    child: Text("Plus d'info",style: TextStyle(color: Color.fromRGBO(10, 31, 110, 1),letterSpacing: 1.5,fontSize: 18.0,fontWeight: FontWeight.bold,fontFamily: 'hyundai'),),),
                )
              ],
            ),
          ),


        ],
      ),
    );
  }
}
