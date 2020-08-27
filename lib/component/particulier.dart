import 'package:flutter/material.dart';

import 'package:hyundai_togo_ct/component/gamme.dart';
import 'package:hyundai_togo_ct/component/modeles.dart';
import 'package:hyundai_togo_ct/component/gamme_berline.dart';
import 'package:hyundai_togo_ct/component/modele_berline.dart';

class Particulier extends StatefulWidget {
  @override
  _ParticulierState createState() => _ParticulierState();
}

class _ParticulierState extends State<Particulier> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Modele_berline(),

        SizedBox(
          height: 5,
        ),

        Container(
          height: 400,
            child: GammeBerline()),

      ],
    );
  }
}
