import 'package:flutter/material.dart';
import 'package:hyundai_togo_ct/component/h1.dart';
import 'package:hyundai_togo_ct/component/h100.dart';

class GammeCom extends StatefulWidget {
  @override
  _GammeComState createState() => _GammeComState();
}

class _GammeComState extends State<GammeCom> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        new ListTile(
          leading: new Image.asset(
            "assets/images/commercial/h1.png" ,
            fit: BoxFit.cover,
            width: 160.0,
            //height: 150,

          ),

          title: new Text("H1",
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
              builder: (context)=> new H1())),

        ),
        SizedBox(
          height: 15,
        ),
        new ListTile(
          leading: new Image.asset(
            "assets/images/commercial/h-100.png" ,
            fit: BoxFit.cover,
            width: 160.0,
            //height: 150,

          ),

          title: new Text("H 100",
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
              builder: (context)=> new H100())),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}


class gammeCom extends StatelessWidget {

  final gamme_nameCom;
  final gamme_imageCom;
  final Function press;

  gammeCom({
    this.gamme_nameCom,
    this.gamme_imageCom,
    this.press
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Hero(
        tag: gamme_nameCom,
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
                child: Text(gamme_nameCom,style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              child: Image.asset(gamme_imageCom, fit: BoxFit.contain,),
            ),
          ) ,
        ),
      ),
    );
  }
}

