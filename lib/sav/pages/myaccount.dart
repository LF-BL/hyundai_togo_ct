import 'package:flutter/material.dart';
import 'package:hyundai_togo_ct/sav/pages/account2.dart';

class MyAccount extends StatefulWidget {
  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    //ScreenUtil.init(context, height:896, width:414, allowFontScaling: true);
    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.white54,
        title: Image.asset("assets/g.png", fit: BoxFit.cover),

      ),
      
      //body

      body: ListView(
        children: <Widget>[

          name(
            thumbnail: Container(
              //decoration: const BoxDecoration(color: Colors.pink),
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child:Image.asset(""),
              ),
            ),
            title: 'Modèle',
            subtitle: 'Immatriculation',
            author: 'Nom client',
          ),

          SizedBox(height: 10.0,),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0,horizontal: 15.0
                        ),
                        onPressed: ()=> Navigator.of(context).push(new MaterialPageRoute(
                            builder: (context)=> new MyAccount()
                        )
                        ),
                        color: Color.fromRGBO(10, 31, 110, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0)
                        ),
                        child: Text('Detail du vehicule',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'hyundai'),),
                        textColor: Colors.white ),
                    FlatButton(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0,horizontal: 15.0
                        ),
                        onPressed: ()=> Navigator.of(context).push(new MaterialPageRoute(
                            builder: (context)=> new Account()
                        )
                        ),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0)
                        ),
                        child: Text('Détails personnel',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'hyundai'),),
                        textColor: Color.fromRGBO(10, 31, 110, 1) )
                  ],
                ),
                Container(
                  height: 60.0,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0
                  ),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top:14.0),
                      labelText: 'DOS:',
                      labelStyle: TextStyle(fontSize: 16.0,fontFamily: 'hyundai'),
                    ),
                  ),
                ),
                Container(
                  height: 60.0,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0
                  ),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top:14.0),
                      labelText: 'Modèle:',
                      labelStyle: TextStyle(fontSize: 16.0,fontFamily: 'hyundai'),
                    ),
                  ),
                ),
                Container(
                  height: 60.0,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0
                  ),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top:14.0),
                      labelText: "N° d'enregistrement:",
                      labelStyle: TextStyle(fontSize: 16.0,fontFamily: 'hyundai'),
                    ),
                  ),
                ),
                Container(
                  height: 60.0,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0
                  ),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top:14.0),
                      labelText: 'N° châssis:',
                      labelStyle: TextStyle(fontSize: 16.0,fontFamily: 'hyundai'),
                    ),
                  ),
                ),
                Container(
                  height: 60.0,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0
                  ),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top:14.0),
                      labelText: 'Moteur:',
                      labelStyle: TextStyle(fontSize: 16.0,fontFamily: 'hyundai'),
                    ),
                  ),
                ),
              ],
            ),
        ],
      )
    );
    
  }
}

class Customename extends StatelessWidget {
  Customename({
    Key key,
    this.title,
    this.subtitle,
    this.author,

  }) : super(key: key);

  final String title;
  final String subtitle;
  final String author;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '$title',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 2.0)),
              Text(
                '$subtitle',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class name extends StatelessWidget {
  name({
    Key key,
    this.thumbnail,
    this.title,
    this.subtitle,
    this.author,

  }) : super(key: key);

  final Widget thumbnail;
  final String title;
  final String subtitle;
  final String author;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 80,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 1.0,
              child: thumbnail,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
                child: Customename(
                  title: title,
                  subtitle: subtitle,
                  author: author,

                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}




