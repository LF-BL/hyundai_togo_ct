import 'package:flutter/material.dart';

class Promotion extends StatefulWidget {
  @override
  _PromotionState createState() => _PromotionState();
}

class _PromotionState extends State<Promotion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE9E9E9),
        appBar: new AppBar(
          elevation: 0.1,
          backgroundColor: Colors.white54,
          title: Image.asset("assets/g.png", fit: BoxFit.cover),

        ),

        body: ListView(
          children: <Widget>[
            Container(
              height: 180,
              child: Image.asset("assets/images/promotion/accent offres.png",fit: BoxFit.cover,),
            ),
            Container(
              height: 180,
              child: Image.asset("assets/images/promotion/creta prom.png",fit: BoxFit.cover,),
            ),
            Container(
              height: 180,
              child: Image.asset("assets/images/promotion/santafe promo.png",fit: BoxFit.cover,),
            ),
          ],
        )
    );
  }
}
