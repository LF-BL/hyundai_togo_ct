import 'package:flutter/material.dart';
import 'package:hyundai_togo_ct/sav/Component/travaux.dart';

class Devis extends StatefulWidget {
  @override
  _DevisState createState() => _DevisState();
}

class _DevisState extends State<Devis> {

  Future<void> _typetravaux(BuildContext context){
    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text("Veuillez selectionner le type de travaux:"),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text("Révision "),
                onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context)=> new Revision())),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              GestureDetector(
                child: Text("Réparation "),
                onTap: (){
                  _reparation(context);
                },
              ),
            ],
          ),
        ),
      );
    });
  }
  Future<void> _reparation(BuildContext context){
    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text("Merci de nous contacter pour plus d'info:"),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text("70476196 "),
                onTap: (){
                },
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              GestureDetector(
                child: Text("91039292 "),
                onTap: (){
                },
              ),
            ],
          ),
        ),
          actions: <Widget>[

            FlatButton(
              child: Text("Ok"),
              onPressed: ()=> Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context)=> new Devis())),),

          ]
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFFE9E9E9),
        appBar: new AppBar(
          elevation: 0.1,
          backgroundColor: Colors.white54,
          title: Image.asset("assets/g.png", fit: BoxFit.cover),

        ),

        body: Stack(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.all(20),
                  height: double.infinity,
                  color: Colors.black12,
                  child:SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.0,
                        vertical: 10.0,
                      ),

                      child: Column(

                          children: <Widget>[

                            SizedBox(
                              height: 30.0,
                            ),
                            Container(
                              height: 50.0,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius: BorderRadius.circular(5.0),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 3.0,
                                        offset: Offset(0, 2)
                                    )
                                  ]
                              ),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                style: TextStyle(color: Color.fromRGBO(10, 31, 110, 1)),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(top:10.0),
                                  labelText: 'Modèle:',
                                  labelStyle: TextStyle(color:Color.fromRGBO(10, 31, 110, 1),fontSize: 16.0,fontFamily: 'hyundai'),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 10.0,
                            ),

                            Container(
                              height: 50.0,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius: BorderRadius.circular(5.0),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 3.0,
                                        offset: Offset(0, 2)
                                    )
                                  ]
                              ),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                style: TextStyle(color: Color.fromRGBO(10, 31, 110, 1)),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(top:10.0),
                                  labelText: 'Nom:',
                                  labelStyle: TextStyle(color:Color.fromRGBO(10, 31, 110, 1),fontSize: 16.0,fontFamily: 'hyundai'),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              height: 50.0,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius: BorderRadius.circular(5.0),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 3.0,
                                        offset: Offset(0, 2)
                                    )
                                  ]
                              ),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                style: TextStyle(color: Color.fromRGBO(10, 31, 110, 1)),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(top:10.0),
                                  labelText: 'Prénom:',
                                  labelStyle: TextStyle(color:Color.fromRGBO(10, 31, 110, 1),fontSize: 16.0,fontFamily: 'hyundai'),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              height: 50.0,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius: BorderRadius.circular(5.0),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 3.0,
                                        offset: Offset(0, 2)
                                    )
                                  ]
                              ),
                              child: TextField(
                                keyboardType: TextInputType.number,
                                style: TextStyle(color: Color.fromRGBO(10, 31, 110, 1)),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(top:10.0),
                                  labelText: 'Contact:',
                                  labelStyle: TextStyle(color:Color.fromRGBO(10, 31, 110, 1),fontSize: 16.0,fontFamily: 'hyundai'),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 10.0,
                            ),

                            Container(
                              height: 50.0,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white70,
                                  borderRadius: BorderRadius.circular(5.0),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 3.0,
                                        offset: Offset(0, 2)
                                    )
                                  ]
                              ),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                style: TextStyle(color: Color.fromRGBO(10, 31, 110, 1)),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(top:10.0),
                                  labelText: 'Ville:',
                                  labelStyle: TextStyle(color:Color.fromRGBO(10, 31, 110, 1),fontSize: 16.0,fontFamily: 'hyundai'),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 10.0,
                            ),

                            Container(
                              padding: EdgeInsets.symmetric(vertical: 5.0),
                              width: double.infinity,
                              child: RaisedButton(onPressed: (){
                                _typetravaux(context);
                              },
                                padding: EdgeInsets.all(15.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                color: Colors.white70,
                                child: Text("Type de travaux",
                                    textAlign: TextAlign.start,style: TextStyle(color: Color.fromRGBO(10, 31, 110, 1),letterSpacing: 1.5,fontSize: 14.0,fontFamily: 'hyundai'),),),
                            ),

                          ]
                      )
                  )
              )
            ]
        )
    );
  }
}


