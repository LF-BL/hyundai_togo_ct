import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Modeles extends StatefulWidget {
  @override
  _ModelesState createState() => _ModelesState();
}

class _ModelesState extends State<Modeles> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          mode(
            imageMode: "assets/images/modeles/elantra.png",
            texteMode: "Elantra",
          ),
          mode(
            imageMode: "assets/images/modeles/Eon.png",
            texteMode: "Eon",
          ),
          mode(
            imageMode: "assets/images/modeles/i10.png",
            texteMode: "i10",
          ),
          mode(
            imageMode: "assets/images/modeles/i20.png",
            texteMode: "i20",
          ),
          mode(
            imageMode: "assets/images/modeles/i30.png",
            texteMode: "i30",
          ),
          mode(
            imageMode: "assets/images/modeles/i40.png",
            texteMode: "i40",
          ),
          mode(
            imageMode: "assets/images/modeles/kona.png",
            texteMode: "Kona",
          ),
          mode(
            imageMode: "assets/images/modeles/palisade.png",
            texteMode: "Palisade",
          ),
          mode(
            imageMode: "assets/images/modeles/santafe.png",
            texteMode: "Santa Fe",
          ),
          mode(
            imageMode: "assets/images/modeles/sonata.png",
            texteMode: "Sonata",
          ),
          mode(
            imageMode: "assets/images/modeles/tucson.png",
            texteMode: "Tucson",
          )
        ],
      ),
    );
  }
}


class mode extends StatelessWidget {

  final String imageMode;
  final String texteMode;

  mode({
    this.imageMode,
    this.texteMode,
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
            title: Image.asset(imageMode,
            width: 130.0,
            height: 60,),
            subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(texteMode, style: TextStyle(color: Colors.indigo,fontSize: 12.0),)),
          ),
        ),
      ),
    );
  }
}

