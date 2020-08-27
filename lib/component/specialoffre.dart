import 'package:flutter/material.dart';
import 'package:hyundai_togo_ct/component/reprise.dart';
import 'package:hyundai_togo_ct/component/Voccasion.dart';

class SpecialOffre extends StatefulWidget {
  @override
  _SpecialOffreState createState() => _SpecialOffreState();
}

class _SpecialOffreState extends State<SpecialOffre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xFFE9E9E9),
      backgroundColor: Colors.white,
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.white54,
        title: Image.asset("assets/g.png", fit: BoxFit.cover),

      ),

      body: DefaultTabController(
        length: 2,
        child: Column(
          children: <Widget>[
            Container(
              color: Color.fromRGBO(10, 31, 110, 1),
              constraints: BoxConstraints.expand(height: 50),
              child: TabBar(tabs: [
                Tab(text: "Demander une reprise"),
                Tab(text: "Vehicules d'ocasions"),
              ]),
            ),
            Expanded(
              child: Container(
                child: TabBarView(children: [

                  Reprise(),

                  Voccasion(),


                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
