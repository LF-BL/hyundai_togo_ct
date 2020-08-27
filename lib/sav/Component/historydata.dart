
import 'package:hyundai_togo_ct/sav/Component/devis.dart';
import 'package:hyundai_togo_ct/sav/Component/rdv.dart';
import 'package:hyundai_togo_ct/sav/pages/ouverture.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:hyundai_togo_ct/sav/Component/messagerev.dart';



class SAV extends StatefulWidget {
  @override
  _SAVState createState() => _SAVState();
}

class _SAVState extends State<SAV> {
  Future<void> _plusdinfo(BuildContext context){
    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text("Pour nous contacter:"),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text("N° Téléphone: 91039292"),
                onTap: (){
                },
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              GestureDetector(
                child: Text("E-mail: "),
                onTap: (){
                },
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              GestureDetector(
                child: Text("LAISSEZ UN MESSAGE",style: TextStyle(color: Color.fromRGBO(10, 31, 110, 1),),),
                onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context)=> new ChatScreen1())),
              )
            ],
          ),
        ),
      );
    });
  }
  Widget imageCarousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("assets/garage/5.jpg"),
          AssetImage("assets/garage/2.jpg"),
          AssetImage("assets/garage/4.jpg"),
          AssetImage("assets/garage/1.jpg"),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        autoplayDuration: Duration(milliseconds: 1000),
        dotSize: 3.0,
        indicatorBgPadding: 3.0,
      )

  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.white54,
        title: Image.asset("assets/g.png", fit: BoxFit.cover),

      ),

      body: new Container(
        child: new ListView(
          children: <Widget>[

            imageCarousel,

            SizedBox(
              height: 5,
            ),
            Container(
              height: 350,
                margin: EdgeInsets.symmetric(vertical: 30),
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFE9E9E9),
                ),

                child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 1.10,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: <Widget>[
                      Garage(
                        garage_nom: "Prendre rendez-vous",
                        garage_image: "assets/garage/rdv.jpg",
                        press: ()=> Navigator.of(context).push(new MaterialPageRoute(
                            builder: (context)=> new RDV())),
                      ),

                      Garage(
                        garage_nom: "Demander Un devis",
                        garage_image: "assets/garage/devis.jpg",
                        press: ()=> Navigator.of(context).push(new MaterialPageRoute(
                            builder: (context)=> new Devis())),
                      ),



                      Garage(
                        garage_nom: "S'inscrire/Connexion",
                        garage_image: "assets/garage/connexion.jpg",
                       press: ()=> Navigator.of(context).push(new MaterialPageRoute(
                           builder: (context)=> new Pageh())),

                      ),

                      Garage(
                        garage_nom: "Contactez-Nous",
                        garage_image: "assets/garage/contact.jpg",
                       press: (){
                         _plusdinfo(context);
                       },
                      ),
                    ]

                )
            )

          ],
        ),
      ),
    );
  }
}

class Garage extends StatelessWidget {
  final garage_nom;
  final garage_image;
  final Function press;
  const Garage({
    this.press,
    this.garage_nom,
    this.garage_image,
  });
  @override
  Widget build(BuildContext context) {
    return Container(

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

          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
              //color: kShadowColor,
            ),
          ]
      ),
      child: Hero(
        tag: garage_nom,
        child: Material(
          child:InkWell(
            onTap: press,
            child: GridTile(
              footer: Container(
                alignment: Alignment.center,
                height: 35,
                margin: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                decoration: BoxDecoration(color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(garage_nom,style: TextStyle(fontWeight: FontWeight.bold, color:Color.fromRGBO(10, 31, 110, 1)),),
              ),
              child: Image.asset(garage_image, fit: BoxFit.contain,),
            ),
          ) ,
        ),
      ),
    );
  }
}

