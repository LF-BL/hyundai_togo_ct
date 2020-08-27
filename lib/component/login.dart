import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:carousel_pro/carousel_pro.dart';

/*void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Coffee App",
      home: AuthEntryPage(),
    );
  }
}*/

enum AuthType { facebook, twitter, google, email }

class AuthEntryPage extends StatelessWidget {

  final imageLinks = <String> [
    'assets/images/modeles/i10.png',
    'assets/images/modeles/i20.png',
    'assets/images/modeles/i30.png',
  ];

  final authTypes = <AuthType>[
    AuthType.facebook,
    AuthType.twitter,
    AuthType.google,
    AuthType.email
  ];

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
                    AssetImage("assets/images/carousel/1.png"),
                    AssetImage("assets/images/carousel/2.png"),
                    AssetImage("assets/images/carousel/5.png"),
                    AssetImage("assets/images/carousel/6.png"),
                    AssetImage("assets/images/carousel/7.png"),
                    AssetImage("assets/images/carousel/11.png"),
                    AssetImage("assets/images/carousel/12.png"),
                    AssetImage("assets/images/carousel/13.png"),
                  ],
                  autoplay: false,
                  animationCurve: Curves.fastOutSlowIn,
                  autoplayDuration: Duration(milliseconds: 1000),
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
                      vertical: 5.0,horizontal: 10.0
                  ),
                  onPressed: (){},
                  color: Colors.black12,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  icon: const Icon(Icons.directions_car,
                    color: Colors.white,),
                  label: Text('Service Vente',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'hyundai'),),
                  textColor: Color.fromRGBO(10, 31, 110, 1),
                ),
                FlatButton.icon(

                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0,horizontal: 10.0
                  ),
                  onPressed: (){},
                  color: Colors.black12,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
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
