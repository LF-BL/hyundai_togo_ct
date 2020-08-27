import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hyundai_togo_ct/pages/catalogue.dart';
import 'package:hyundai_togo_ct/pages/garantie.dart';
import 'package:hyundai_togo_ct/pages/reseauclient.dart';
import 'package:hyundai_togo_ct/pages/devis.dart';
import 'package:hyundai_togo_ct/component/specialoffre.dart';
import 'package:hyundai_togo_ct/component/promotion.dart';

class SelectionChoix extends StatefulWidget {
  @override
  _SelectionChoixState createState() => _SelectionChoixState();
}

class _SelectionChoixState extends State<SelectionChoix> {
  var select_list = [{
    "name": "Catalogue",
    "picture": "assets/images/homepic/catalogue.png"
  },
  {
    "name": "Demander devis",
    "picture": "assets/images/homepic/demande-devis.png"
  },
  {
    "name": "Garantie",
    "picture": "assets/images/homepic/garantie.png",
  },
  {
    "name": "Service client",
    "picture": "assets/images/homepic/relationclient.png",

  }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
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
                 select(
                   select_name: "Gammes",
                   select_pic: "assets/images/homepic/gamme.jpg",
                   press: ()=> Navigator.of(context).push(new MaterialPageRoute(
                       builder: (context)=> new Catalogue())),
                 ),

                 select(
                   select_name: "Demande Test-Drive",
                   select_pic: "assets/images/homepic/testdrive.png",
                   press: ()=> Navigator.of(context).push(new MaterialPageRoute(
                       builder: (context)=> new Devis())),
                 ),

                 select(
                   select_name: "S'inscrire",
                   select_pic: "assets/images/homepic/connection.jpg",
                   press: ()=> Navigator.of(context).push(new MaterialPageRoute(
                       builder: (context)=> new Garantie())),
                 ),

                 select(
                   select_name: "Offres Speciales",
                   select_pic: "assets/images/homepic/soffre.jpg",
                   press: ()=> Navigator.of(context).push(new MaterialPageRoute(
                       builder: (context)=> new SpecialOffre())),
                 ),

                 select(
                   select_name: "Contactez-Nous",
                   select_pic: "assets/images/homepic/contacter.jpg",
                   press: ()=> Navigator.of(context).push(new MaterialPageRoute(
                       builder: (context)=> new RelationClient())),
                 ),

                 select(
                   select_name: "Promotion",
                   select_pic: "assets/images/homepic/promotion.jpg",
                   press: ()=> Navigator.of(context).push(new MaterialPageRoute(
                       builder: (context)=> new Promotion())),
                 ),
                 SizedBox(
                   height: 5,
                 )
               ]

      )
    );
  }
}

class select extends StatelessWidget {
  final select_name;
  final select_pic;
  final  Function press;

  select({
    this.select_name,
    this.select_pic,
    this.press,
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
        tag: select_name,
        child: Material(
          child:InkWell(
            onTap: press,
            child: GridTile(
              footer: Container(
                alignment: Alignment.center,
                height: 35,
                margin: EdgeInsets.symmetric(horizontal: 0,vertical: 80),
                decoration: BoxDecoration(color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(select_name,style: TextStyle(fontWeight: FontWeight.bold, color:Color.fromRGBO(10, 31, 110, 1)),),
              ),
              child: Image.asset(select_pic, fit: BoxFit.contain,),
            ),
          ) ,
        ),
      ),
    );
  }
}


