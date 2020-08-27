import 'package:flutter/material.dart';

class Modele_suv extends StatefulWidget {
  @override
  _Modele_suvState createState() => _Modele_suvState();
}

class _Modele_suvState extends State<Modele_suv> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          modesuv(
            imagesuv: "assets/images/modeles/creta.png",
            textesuv: "Creta",
          ),
          modesuv(
            imagesuv: "assets/images/modeles/i20active.png",
            textesuv: "i20 Active",
          ),
          modesuv(
            imagesuv: "assets/images/modeles/palisade.png",
            textesuv: "Palisade",
          ),
          modesuv(
            imagesuv: "assets/images/modeles/tucson.png",
            textesuv: "Tucson",
          ),
          modesuv(
            imagesuv: "assets/images/modeles/venus.png",
            textesuv: "Venus",
          ),
          modesuv(
            imagesuv: "assets/images/suv/santafe.png",
            textesuv: "Santa Fe",
          ),
        ],
      ),
    );
  }
}


class modesuv extends StatelessWidget {

  final String imagesuv;
  final String textesuv;

  modesuv({
    this.imagesuv,
    this.textesuv,
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
            title: Image.asset(imagesuv,
              width: 130.0,
              height: 60,),
            subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(textesuv, style: TextStyle(color: Colors.indigo,fontSize: 12.0),)),
          ),
        ),
      ),
    );
  }
}

