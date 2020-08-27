//import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hyundai_togo_ct/sav/pages/message.dart';
import 'package:hyundai_togo_ct/constant.dart';
import 'package:hyundai_togo_ct/sav/Component/wearesocial.dart';
import 'package:hyundai_togo_ct/sav/Component/callcustomercare.dart';
import 'package:hyundai_togo_ct/sav/Component/emailus.dart';

class GetInTouch extends StatefulWidget {
  @override
  _GetInTouchState createState() => _GetInTouchState();
}

class _GetInTouchState extends State<GetInTouch> {

  Future<void> _plusdinfo(BuildContext context){
    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text("Pour nous contacter:"),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text("91039292"),
                onTap: (){
                },
              ),
            ],
          ),
        ),
      );
    });
  }
  Future<void> _reseau(BuildContext context){
    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(

        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text("WhatsApp:"),
                onTap: (){
                },
              ),
              GestureDetector(
                child: Text("Facebook:"),
                onTap: (){
                },
              ),
              GestureDetector(
                child: Text("Twitter:"),
                onTap: (){
                },
              ),
            ],
          ),
        ),
      );
    });
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

      body: Column(
        children: <Widget>[
          Container(
            height: 150,
            decoration: BoxDecoration(

              image: DecorationImage(
                  image: AssetImage('assets/assets/images/get.jpg'
                  ),
                  fit: BoxFit.cover
              ),
            ),
          ),
       // SizedBox(height: 60,),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              padding: EdgeInsets.symmetric(horizontal: 20),
              // alignment: Alignment.bottomLeft,
              //padding: EdgeInsets.symmetric(horizontal: 100.0,vertical: 20.0,),
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1.10,
                crossAxisSpacing: 30,
                mainAxisSpacing: 40,
                children: <Widget>[
                  CategoryCard(
                    call_name: "message ",
                    call_picture: "assets/assets/images/message.jpg",
                    press: ()=> Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context)=> new ChatScreen())),
                  ),
                  CategoryCard(
                    call_name: "Service client",
                    call_picture: "assets/assets/images/service.jpg",
                    press: (){
                      _plusdinfo(context);
                    },
                  ),
                  CategoryCard(
                    call_name: "E-mail",
                    call_picture: "assets/assets/images/gmail.jpg",
                    press: ()=> Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context)=> new EmailUs())),
                  ),
                  CategoryCard(
                    call_name: "Réseau social",
                    call_picture: "assets/assets/images/WAS.jpg",
                    press: (){
                      _reseau(context);
                    }
                  ),
                ],

              ),
            ),
          )
        ],
      )
      

          );
  }
}

class CategoryCard extends StatelessWidget {
  final call_name;
  final call_picture;
  final Function press;
  const CategoryCard({
    this.press,
    this.call_name,
    this.call_picture,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
          padding: EdgeInsets.all(0),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white,
                    Colors.grey,
                    Colors.indigo,
                    Colors.white54,
                  ] ,
                  stops: [0.1, 8.4, 0.7, 8.9]
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 17),
                  blurRadius: 17,
                  spreadRadius: -23,
                  color: kShadowColor,
                ),
              ]

          ),
          // alignment: FractionalOffset.center,
          child: Hero(
              tag: call_name,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: press,
                  child: GridTile(
                      footer: Container(
                        height: 35,
                        margin: EdgeInsets.symmetric(horizontal: 0,vertical: 15),
                        decoration: BoxDecoration(color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          leading: Text(call_name, style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'hyundai'),),
                        ),
                      ),
                      child: Image.asset(call_picture,
                        fit: BoxFit.cover,
                      )
                  ),
                ),
              )
          )

    );
  }
}



