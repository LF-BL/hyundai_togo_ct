import 'package:hyundai_togo_ct/component/modele_commercial.dart';
import 'package:flutter/material.dart';

import 'package:hyundai_togo_ct/component/modele_commercial.dart';
import 'package:hyundai_togo_ct/component/gamme_commercial.dart';

class Utilitaire extends StatefulWidget {
  @override
  _UtilitaireState createState() => _UtilitaireState();
}

class _UtilitaireState extends State<Utilitaire> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Modele_commercial(),

        SizedBox(
          height: 5,
        ),
        Container(
            height: 400,
            child: GammeCom()),


      ],
    );
  }
}
