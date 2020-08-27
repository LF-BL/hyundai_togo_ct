import 'package:flutter/material.dart';

class Gammes extends StatefulWidget {
  @override
  _GammesState createState() => _GammesState();
}

class _GammesState extends State<Gammes> {
  @override
  Widget build(BuildContext context) {
    return  ListView(

          children: <Widget>[
            new ListTile(
              leading: new Image.asset(
                "assets/images/modeles/elantra.png" ,
                fit: BoxFit.cover,
                width: 100.0,
                //height: 150,

              ),

              title: new Text("Elantra",
                style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
              subtitle: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text("37 000 000",
                        style: new TextStyle(
                            fontSize: 13.0, fontWeight: FontWeight.normal)),
                    new Text('',
                        style: new TextStyle(
                            fontSize: 11.0, fontWeight: FontWeight.normal)),
                  ]),
              //trailing: ,
              onTap: () {},
            ),
            SizedBox(
              height: 15,
            ),
            new ListTile(
              leading: new Image.asset(
                "assets/images/modeles/elantra.png" ,
                fit: BoxFit.cover,
                width: 100.0,
                //height: 150,

              ),

              title: new Text("Elantra",
                style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
              subtitle: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text("37 000 000",
                        style: new TextStyle(
                            fontSize: 13.0, fontWeight: FontWeight.normal)),
                    new Text('',
                        style: new TextStyle(
                            fontSize: 11.0, fontWeight: FontWeight.normal)),
                  ]),
              //trailing: ,
              onTap: () {},
            ),
            SizedBox(
              height: 15,
            ),
            new ListTile(
              
              leading: new Image.asset(
                "assets/images/modeles/elantra.png" ,
                fit: BoxFit.cover,
                width: 100.0,
                //height: 150,

              ),

              title: new Text("Elantra",
                style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
              subtitle: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text("37 000 000",
                        style: new TextStyle(
                            fontSize: 13.0, fontWeight: FontWeight.normal)),
                    new Text('',
                        style: new TextStyle(
                            fontSize: 11.0, fontWeight: FontWeight.normal)),
                  ]),
              //trailing: ,
              onTap: () {},
            ),
            SizedBox(
              height: 15,
            ),
            new ListTile(
              leading: new Image.asset(
                "assets/images/modeles/elantra.png" ,
                fit: BoxFit.cover,
                width: 100.0,
                //height: 150,

              ),

              title: new Text("Elantra",
                style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
              subtitle: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text("37 000 000",
                        style: new TextStyle(
                            fontSize: 13.0, fontWeight: FontWeight.normal)),
                    new Text('',
                        style: new TextStyle(
                            fontSize: 11.0, fontWeight: FontWeight.normal)),
                  ]),
              //trailing: ,
              onTap: () {},
            ),
            SizedBox(
              height: 15,
            ),
            new ListTile(
              leading: new Image.asset(
                "assets/images/modeles/elantra.png" ,
                fit: BoxFit.cover,
                width: 100.0,
                //height: 150,

              ),

              title: new Text("Elantra",
                style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
              subtitle: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text("37 000 000",
                        style: new TextStyle(
                            fontSize: 13.0, fontWeight: FontWeight.normal)),
                    new Text('',
                        style: new TextStyle(
                            fontSize: 11.0, fontWeight: FontWeight.normal)),
                  ]),
              //trailing: ,
              onTap: () {},
            ),
            SizedBox(
              height: 15,
            ),
            new ListTile(
              leading: new Image.asset(
                "assets/images/modeles/elantra.png" ,
                fit: BoxFit.cover,
                width: 100.0,
                //height: 150,

              ),

              title: new Text("Elantra",
                style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
              subtitle: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text("37 000 000",
                        style: new TextStyle(
                            fontSize: 13.0, fontWeight: FontWeight.normal)),
                    new Text('',
                        style: new TextStyle(
                            fontSize: 11.0, fontWeight: FontWeight.normal)),
                  ]),
              //trailing: ,
              onTap: () {},
            )
          ],
        );
  }
}

class gamme extends StatelessWidget {

  final gamme_name;
  final gamme_image;
  final Function press;

  gamme({
    this.gamme_name,
    this.gamme_image,
    this.press
});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Hero(
        tag: gamme_name,
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
                child: Text(gamme_name,style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              child: Image.asset(gamme_image, fit: BoxFit.contain,),
            ),
          ) ,
        ),
      ),
    );
  }
}

