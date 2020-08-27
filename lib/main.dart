import 'dart:async';
import 'dart:ui';

import 'package:hyundai_togo_ct/sav/pages/ouverture.dart';
import 'package:flutter/material.dart';
import 'package:hyundai_togo_ct/pages/homepage.dart';
//import 'package:hyundai_togo_ct/constant.dart';
//import 'package:hyundai_togo_ct/pages/devis.dart';
//import 'package:hyundai_togo_ct/pages/catalogue.dart';
//import 'package:hyundai_togo_ct/pages/garantie.dart';
//import 'package:hyundai_togo_ct/pages/reseauclient.dart';
import 'package:hyundai_togo_ct/sav/main.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:hyundai_togo_ct/sav/Component/historydata.dart';


void main() {
  runApp(MaterialApp(
    home: Greeting(),
    debugShowCheckedModeBanner: false,
  ));
}

class Greeting extends StatefulWidget {


  @override
  _GreetingState createState() => _GreetingState();
}

class _GreetingState extends State<Greeting> {

  @override
  initState() {
    super.initState();
    new Timer(const Duration(seconds: 10), onClose);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          /*Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/v.jpg"),
                  fit: BoxFit.fill),
            ),
            child: new BackdropFilter(
              filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: new Container(
                decoration: new BoxDecoration(color: Colors.white.withOpacity(0.0)),
              ),
            ),
          ),*/

          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/hyundai.png"),
                  fit: BoxFit.contain),
            ),
          ),
          /*Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(image: AssetImage('assets/hyundai.png'),),


              /*Container(

                child: Text('CO-TO AUTO S.A',
                  style: TextStyle(color: Color.fromRGBO(10, 31, 110, 1),fontSize: 20.0,fontWeight: FontWeight.bold,fontFamily: 'hyundai'),
                ),
              ),*/
            ],
          ),*/

        ],
      ),
    );
  }

  void onClose() {
    Navigator.of(context).pushReplacement(new PageRouteBuilder(
        maintainState: true,
        opaque: true,
        pageBuilder: (context, _, __) => new MyApp(),
        transitionDuration: const Duration(seconds: 2),
        transitionsBuilder: (context, anim1, anim2, child) {
          return new FadeTransition(
            child: child,
            opacity: anim1,
          );
        }));
  }
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height /1.2,
                child: new Carousel(
                  boxFit: BoxFit.cover,
                  images: [
                    //AssetImage("assets/images/carousel/3.png"),
                    AssetImage("assets/images/carousel/3.jpg"),
                    AssetImage("assets/images/carousel/4.jpg"),
                    //AssetImage("assets/images/carousel/5.jpg"),
                    AssetImage("assets/images/carousel/6.jpg",
                    ),

                  ],
                  autoplay: true,
                  animationCurve: Curves.fastOutSlowIn,
                  autoplayDuration: Duration(milliseconds: 3000),
                  dotSize: 3.0,
                  indicatorBgPadding: 3.0,
                )

            ),

            SizedBox(height: 30.0,),

            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton.icon(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0,horizontal: 7.0
                  ),
                  onPressed: ()=> Navigator.of(context).push(new MaterialPageRoute(
                      builder: (context)=> new MyHomePage())),
                  color: Colors.black12,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)
                  ),
                  icon: const Icon(Icons.directions_car,
                    color: Colors.white,),
                  label: Text('Service Vente',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'hyundai'),),
                  textColor: Color.fromRGBO(10, 31, 110, 1),
                ),
                FlatButton.icon(

                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0,horizontal: 7.0
                  ),
                  onPressed: ()=> Navigator.of(context).push(new MaterialPageRoute(
                      builder: (context)=> new SAV())),
                  color: Colors.black12,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)
                  ),
                  icon: const Icon(Icons.local_car_wash,
                    color: Colors.white,),
                  label: Text('Service Après vente',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'hyundai'),),
                  textColor: Color.fromRGBO(10, 31, 110, 1),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}





