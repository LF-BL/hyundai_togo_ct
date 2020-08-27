import 'package:hyundai_togo_ct/component/azera.dart';
import 'package:hyundai_togo_ct/component/i10.dart';
import 'package:hyundai_togo_ct/component/sonata.dart';
import 'package:flutter/material.dart';
import 'package:hyundai_togo_ct/component/accent.dart';
import 'package:hyundai_togo_ct/component/elantra.dart';
import 'package:hyundai_togo_ct/component/bi20.dart';

class GammeBerline extends StatefulWidget {
  @override
  _GammeBerlineState createState() => _GammeBerlineState();
}

class _GammeBerlineState extends State<GammeBerline> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        new ListTile(
          leading: new Image.asset(
            "assets/images/berlin/accent.png" ,
            fit: BoxFit.cover,
            width: 160.0,
            //height: 150,

          ),


          title: new Text("Accent",
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
              builder: (context)=> new Accent())),
        ),
        SizedBox(
          height: 15,
        ),
        new ListTile(
          leading: new Image.asset(
            "assets/images/berlin/elantra.png" ,
            fit: BoxFit.cover,
            width: 160.0,
            //height: 150,

          ),

          title: new Text("Elantra",
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
              builder: (context)=> new Elantra())),

        ),
        SizedBox(
          height: 15,
        ),
        new ListTile(
          leading: new Image.asset(
            "assets/images/berlin/azera.png" ,
            fit: BoxFit.cover,
            width: 160.0,
            //height: 150,

          ),

          title: new Text("Azera",
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
              builder: (context)=> new Azera())),

        ),
        SizedBox(
          height: 15,
        ),
        new ListTile(
          leading: new Image.asset(
            "assets/images/berlin/sonata.png" ,
            fit: BoxFit.cover,
            width: 160.0,
            //height: 150,

          ),

          title: new Text("Sonata",
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
              builder: (context)=> new Sonata())),
        ),
        SizedBox(
          height: 15,
        ),
        new ListTile(
          leading: new Image.asset(
            "assets/images/berlin/i20.png" ,
            fit: BoxFit.cover,
            width: 160.0,
            //height: 150,

          ),

          title: new Text("i20",
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
              builder: (context)=> new bi20())),
        ),
        SizedBox(
          height: 15,
        ),
        new ListTile(
          leading: new Image.asset(
            "assets/images/berlin/newgrandi10.png" ,
            fit: BoxFit.cover,
            width: 160.0,
            //height: 150,

          ),

          title: new Text("Grand i10",
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
              builder: (context)=> new i10())),

        ),
        SizedBox(
          height: 20,
        ),

      ],
    );
  }
}

class gammeBerlin extends StatelessWidget {

  final gamme_nameBerlin;
  final gamme_imageBerlin;
  final Function press;

  gammeBerlin({
    this.gamme_nameBerlin,
    this.gamme_imageBerlin,
    this.press
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Hero(
        tag: gamme_nameBerlin,
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
                child: Text(gamme_nameBerlin,style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              child: Image.asset(gamme_imageBerlin, fit: BoxFit.contain,),
            ),
          ) ,
        ),
      ),
    );
  }
}

