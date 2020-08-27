import 'package:flutter/material.dart';

import 'package:hyundai_togo_ct/component/particulier.dart';
import 'package:hyundai_togo_ct/component/suv.dart';
import 'package:hyundai_togo_ct/component/utilitaire.dart';

class Catalogue extends StatefulWidget {
  @override
  _CatalogueState createState() => _CatalogueState();
}

class _CatalogueState extends State<Catalogue> {
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
      length: 3,
      child: Column(
        children: <Widget>[
          Container(
            color: Color.fromRGBO(10, 31, 110, 1),
            constraints: BoxConstraints.expand(height: 50),
            child: TabBar(tabs: [
              Tab(text: "Berlines"),
              Tab(text: "SUV"),
              Tab(text: "Commerciales"),
            ]),
          ),
          Expanded(
            child: Container(
              child: TabBarView(children: [

                  Particulier(),

                  Suv(),

                  Utilitaire(),

              ]),
            ),
          )
        ],
      ),
    ),
    );
  }
}
