import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Voccasion extends StatefulWidget {
  @override
  _VoccasionState createState() => _VoccasionState();
}

class _VoccasionState extends State<Voccasion> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[

       /* Padding(
          padding: new EdgeInsets.all(7.0),
          child: new Text("IX 35"),
        ),*/

        Container(
          height: 200,
            //width: double.infinity,
            //height: MediaQuery.of(context).size.height /1.2,
            child: new Carousel(
              boxFit: BoxFit.cover,
              images: [
                //AssetImage("assets/images/carousel/3.png"),
                AssetImage("assets/images/ix35/ix 351.png"),
                //AssetImage("assets/images/ix35/ix 352.png"),
                //AssetImage("assets/images/carousel/5.jpg"),
               // AssetImage("assets/images/ix35/ix 353.png"),

              ],
              autoplay: false,
              animationCurve: Curves.fastOutSlowIn,
              autoplayDuration: Duration(milliseconds: 3000),
              dotSize: 3.0,
              indicatorBgPadding: 3.0,
            )

        ),

       /* Padding(
            padding: new EdgeInsets.all(7.0),
            child: new Row(
              children: <Widget>[
                new Padding(
                  padding: new EdgeInsets.all(7.0),
                  child: new Text("Prix d'occasion:"),
                ),
                new Padding(
                  padding: new EdgeInsets.all(7.0),
                  child: new Text(
                    '9 000 000',
                    style: new TextStyle(fontSize: 18.0),
                  ),
                ),

              ],
            )),*/


       /* Padding(
          padding: new EdgeInsets.all(7.0),
          child: new Text("Santa fe"),
        ),*/


        Container(
            height: 200,
           // width: double.infinity,
            //height: MediaQuery.of(context).size.height /1.2,
            child: new Carousel(
              boxFit: BoxFit.cover,
              images: [
                //AssetImage("assets/images/carousel/3.png"),
                AssetImage("assets/images/ocsantafe/santafe ancien1.png"),
               // AssetImage("assets/images/ocsantafe/santafe ancien2.png"),
                //AssetImage("assets/images/carousel/5.jpg"),
               // AssetImage("assets/images/ocsantafe/santafe ancien3.png"),

              ],
              autoplay: false,
              animationCurve: Curves.fastOutSlowIn,
              autoplayDuration: Duration(milliseconds: 3000),
              dotSize: 3.0,
              indicatorBgPadding: 3.0,
            )

        ),


        /*Padding(
            padding: new EdgeInsets.all(7.0),
            child: new Row(
              children: <Widget>[
                new Padding(
                  padding: new EdgeInsets.all(7.0),
                  child: new Text("Prix d'occasion:"),
                ),
                new Padding(
                  padding: new EdgeInsets.all(7.0),
                  child: new Text(
                    '12 000 000',
                    style: new TextStyle(fontSize: 18.0),
                  ),
                ),

              ],
            )),*/


      ],
    );
  }
}
