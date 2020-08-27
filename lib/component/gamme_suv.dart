import 'package:flutter/material.dart';
import 'package:hyundai_togo_ct/component/santafe.dart';
import 'package:hyundai_togo_ct/component/venus.dart';
import 'package:hyundai_togo_ct/component/creta.dart';
import 'package:hyundai_togo_ct/component/palisade.dart';
import 'package:hyundai_togo_ct/component/i20.dart';
import 'package:hyundai_togo_ct/component/tucson.dart';

class GammeSuv extends StatefulWidget {
  @override
  _GammeSuvState createState() => _GammeSuvState();
}

class _GammeSuvState extends State<GammeSuv> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        new ListTile(
          leading: new Image.asset(
            "assets/images/modeles/creta.png" ,
            fit: BoxFit.cover,
            width: 160.0,
            height: 200,

          ),

          title: new Text("Creta",
            style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),textAlign: TextAlign.end,
          ),
          subtitle: new Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                new Text("37 000 000",
                    style: new TextStyle(
                        fontSize: 13.0, fontWeight: FontWeight.normal),textAlign: TextAlign.end,),
                new Text('',
                    style: new TextStyle(
                        fontSize: 11.0, fontWeight: FontWeight.normal),textAlign: TextAlign.end,),
              ]),
          //trailing: ,
          onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
              builder: (context)=> new Creta())),

        ),
        SizedBox(
          height: 15,
        ),
        new ListTile(
          leading: new Image.asset(
            "assets/images/modeles/i20active.png" ,
            fit: BoxFit.cover,
            width: 160.0,
            //height: 150,

          ),

          title: new Text("i20 Active",
            style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),textAlign: TextAlign.end,
          ),
          subtitle: new Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                new Text("37 000 000",
                    style: new TextStyle(
                        fontSize: 13.0, fontWeight: FontWeight.normal),textAlign: TextAlign.end,),
                new Text('',
                    style: new TextStyle(
                        fontSize: 11.0, fontWeight: FontWeight.normal),textAlign: TextAlign.end,),
              ]),
          //trailing: ,
          onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
              builder: (context)=> new i20())),

        ),
        SizedBox(
          height: 15,
        ),
        new ListTile(
          leading: new Image.asset(
            "assets/images/modeles/palisade.png" ,
            fit: BoxFit.cover,
            width: 160.0,
            //height: 150,

          ),

          title: new Text("Palisade",
            style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),textAlign: TextAlign.end,
          ),
          subtitle: new Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                new Text("37 000 000",
                    style: new TextStyle(
                        fontSize: 13.0, fontWeight: FontWeight.normal),textAlign: TextAlign.end,),
                new Text('',
                    style: new TextStyle(
                        fontSize: 11.0, fontWeight: FontWeight.normal),textAlign: TextAlign.end,),
              ]),
          //trailing: ,
          onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
              builder: (context)=> new Palisade())),

        ),
        SizedBox(
          height: 15,
        ),
        new ListTile(
          leading: new Image.asset(
            "assets/images/modeles/tucson.png" ,
            fit: BoxFit.cover,
            width: 160.0,
            //height: 150,

          ),

          title: new Text("Tucson",
            style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),textAlign: TextAlign.end,
          ),
          subtitle: new Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                new Text("37 000 000",
                    style: new TextStyle(
                        fontSize: 13.0, fontWeight: FontWeight.normal),textAlign: TextAlign.end,),
                new Text('',
                    style: new TextStyle(
                        fontSize: 11.0, fontWeight: FontWeight.normal),textAlign: TextAlign.end,),
              ]),
          //trailing: ,
          onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
              builder: (context)=> new Tucson())),

        ),
        SizedBox(height: 15,),
        new ListTile(
          leading: new Image.asset(
            "assets/images/modeles/venus.png" ,
            fit: BoxFit.cover,
            width: 160.0,
            //height: 150,

          ),

          title: new Text("Venus",
            style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),textAlign: TextAlign.end,
          ),
          subtitle: new Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                new Text("37 000 000",
                    style: new TextStyle(
                        fontSize: 13.0, fontWeight: FontWeight.normal),textAlign: TextAlign.end,),
                new Text('',
                    style: new TextStyle(
                        fontSize: 11.0, fontWeight: FontWeight.normal),textAlign: TextAlign.end,),
              ]),
          //trailing: ,
          onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
              builder: (context)=> new Venus())),

        ),
        SizedBox(
          height: 15,
        ),
        new ListTile(
          leading: new Image.asset(
            "assets/images/modeles/santafe.png" ,
            fit: BoxFit.cover,
            width: 160.0,
            height: 150,

          ),

          title: new Text("Santa Fe",
            style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),textAlign: TextAlign.end,
          ),
          subtitle: new Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                new Text("37 000 000",
                    style: new TextStyle(
                        fontSize: 13.0, fontWeight: FontWeight.normal),textAlign: TextAlign.end,),
                new Text('',
                    style: new TextStyle(
                        fontSize: 11.0, fontWeight: FontWeight.normal),textAlign: TextAlign.end,),
              ]),
          //trailing: ,
          onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
              builder: (context)=> new SantaFe())),

        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}


class gammeSuv extends StatelessWidget {

  final gamme_nameSuv;
  final gamme_imageSuv;
  final Function press;

  gammeSuv({
    this.gamme_nameSuv,
    this.gamme_imageSuv,
    this.press
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Hero(
        tag: gamme_nameSuv,
        child: Material(
          child:InkWell(
            onTap: press,
            child: GridTile(
              footer: Container(
                alignment: Alignment.center,
                height: 35,
                margin: EdgeInsets.symmetric(horizontal: 0,vertical: 15),
                decoration: BoxDecoration(color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(gamme_nameSuv,style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              child: Image.asset(gamme_imageSuv, fit: BoxFit.contain,),
            ),
          ) ,
        ),
      ),
    );
  }
}

