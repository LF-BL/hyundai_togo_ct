import 'package:flutter/material.dart';

class Modele_commercial extends StatefulWidget {
  @override
  _Modele_commercialState createState() => _Modele_commercialState();
}

class _Modele_commercialState extends State<Modele_commercial> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          modeCom(
            imageModeCom: "assets/images/commercial/h1.png",
            texteModeCom: "H1",
          ),
          modeCom(
            imageModeCom: "assets/images/commercial/h-100.png",
            texteModeCom: "H 100",
          ),
        ],
      ),
    );
  }
}


class modeCom extends StatelessWidget {

  final String imageModeCom;
  final String texteModeCom;

  modeCom({
    this.imageModeCom,
    this.texteModeCom,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 150.0,
          child: ListTile(
            title: Image.asset(imageModeCom,
              width: 130.0,
              height: 60,),
            subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(texteModeCom, style: TextStyle(color: Colors.indigo,fontSize: 12.0),)),
          ),
        ),
      ),
    );
  }
}

