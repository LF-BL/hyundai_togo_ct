import 'package:flutter/material.dart';

class Modele_berline extends StatefulWidget {
  @override
  _Modele_berlineState createState() => _Modele_berlineState();
}

class _Modele_berlineState extends State<Modele_berline> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          modeberline(
            imageberline: "assets/images/berlin/accent.png",
            texteberline: "Accent",
          ),
          modeberline(
            imageberline: "assets/images/berlin/elantra.png",
            texteberline: "Elantra",
          ),
          modeberline(
            imageberline: "assets/images/berlin/azera.png",
            texteberline: "Azera",
          ),
          modeberline(
            imageberline: "assets/images/berlin/sonata.png",
            texteberline: "Sonata",
          ),
          modeberline(
            imageberline: "assets/images/berlin/i20.png",
            texteberline: "i20",
          ),
          modeberline(
            imageberline: "assets/images/berlin/newgrandi10.png",
            texteberline: "Grand i10",
          ),
        ],
      ),
    );
  }
}


class modeberline extends StatelessWidget {

  final String imageberline;
  final String texteberline;

  modeberline({
    this.imageberline,
    this.texteberline,
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
            title: Image.asset(imageberline,
              width: 130.0,
              height: 60,),
            subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(texteberline, style: TextStyle(color: Colors.indigo,fontSize: 12.0),)),
          ),
        ),
      ),
    );
  }
}

