import 'package:hyundai_togo_ct/pages/catalogue.dart';
import 'package:hyundai_togo_ct/pages/devis.dart';
import 'package:hyundai_togo_ct/pages/garantie.dart';
import 'package:hyundai_togo_ct/pages/reseauclient.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:hyundai_togo_ct/pages/categoriecard.dart';
import 'package:hyundai_togo_ct/component/modeles.dart';
import 'package:hyundai_togo_ct/component/fiserrendez_vous.dart';
import 'package:hyundai_togo_ct/component/login.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, }) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
        height: 200.0,
        child: new Carousel(
          boxFit: BoxFit.cover,
          images: [
            AssetImage("assets/images/carousel/3.png"),
            AssetImage("assets/images/carousel/3.jpg"),
            AssetImage("assets/images/carousel/4.jpg"),
            AssetImage("assets/images/carousel/5.jpg"),
            AssetImage("assets/images/carousel/6.jpg"),

          ],
          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          autoplayDuration: Duration(milliseconds: 2000),
          dotSize: 3.0,
          indicatorBgPadding: 3.0,
        )

    );
    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.white54,
        title: Image.asset("assets/g.png", fit: BoxFit.cover),

      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            InkWell(
              onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context)=> new Garantie())),
              child: ListTile(
                title: Text('Connexion',style: TextStyle(fontFamily: 'hyundai')),
                leading: Icon(Icons.bookmark, color: Colors.grey,),
              ),
            ),

            InkWell(
              onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context)=> new Catalogue())),
              child: ListTile(
                title: Text('Gammes',style: TextStyle(fontFamily: 'hyundai')),
                leading: Icon(Icons.collections_bookmark, color: Colors.grey,),
              ),
            ),

            InkWell(
              onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context)=> new Devis())),
              child: ListTile(
                title: Text('Demander Test-Drive',style: TextStyle(fontFamily: 'hyundai'),),
                leading: Icon(Icons.description, color: Colors.grey,),
              ),
            ),

            InkWell(
              onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context)=> new RelationClient())),
              child: ListTile(
                title: Text('Service Client',style: TextStyle(fontFamily: 'hyundai')),
                leading: Icon(Icons.contact_phone, color: Colors.grey,),
              ),
            ),

            InkWell(
              onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context)=> new RendezVous())),
              child: ListTile(
                title: Text('Fixer un rendez-vous',style: TextStyle(fontFamily: 'hyundai')),
                leading: Icon(Icons.date_range, color: Colors.grey,),
              ),
            ),
          ],
        ),
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
              child: SelectionChoix(),
            )

          ],
        ),
      ),

    );
  }
}