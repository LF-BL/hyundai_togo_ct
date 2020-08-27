import 'package:flutter/material.dart';
import 'package:hyundai_togo_ct/component/modele_suv.dart';
import 'package:hyundai_togo_ct/component/gamme_suv.dart';

class Suv extends StatefulWidget {
  @override
  _SuvState createState() => _SuvState();
}

class _SuvState extends State<Suv> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Modele_suv(),

        SizedBox(
          height: 5,
        ),
        Container(
            height: 400,
            child: GammeSuv()),


      ],
    );
  }
}
