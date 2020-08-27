import 'package:hyundai_togo_ct/sav/Component/devis.dart';
import 'package:flutter/material.dart';

class Revision extends StatefulWidget {
  @override
  _RevisionState createState() => _RevisionState();
}

class _RevisionState extends State<Revision> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
         child: AlertDialog(
            title: Text("Entrer le kilométrage et la dernière revision"),
            content: Column(
              children: <Widget>[
                TextField(
                   decoration: InputDecoration.collapsed(
                      hintText: "Kilométrage du vehicule"),
                ),
                SizedBox(height: 15,),
                TextField(
                   decoration: InputDecoration.collapsed(
                      hintText: "Dernière revision"
                   ),
                ),
              ],
            ),
            actions: <Widget>[

              FlatButton(
                child: Text("Annuler"),
                onPressed: ()=> Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context)=> new Devis())),),
              FlatButton(
                  child: Text("Envoyer"),
                  onPressed: ()=> Navigator.of(context).push(new MaterialPageRoute(
                      builder: (context)=> new Devis())),),

            ]));
  }
}
