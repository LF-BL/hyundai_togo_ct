import 'package:flutter/material.dart';
import 'package:hyundai_togo_ct/component/imagaupload.dart';

class Devis extends StatefulWidget {
  @override
  _DevisState createState() => _DevisState();
}

class _DevisState extends State<Devis> {
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
                    height: 50.0,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 0),
                    child: RaisedButton(
                      elevation: 5.0,
                      onPressed: ()=> Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context)=> new UploadImage())),
                      //padding: EdgeInsets.all(15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Colors.white60,
                      child: Text('Permis de conduire',style: TextStyle(color: Color.fromRGBO(10, 31, 110, 1),letterSpacing: 1.5,fontSize: 18.0,fontWeight: FontWeight.bold,fontFamily: 'hyundai'),),),

                  ),

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 25.0),
                    width: double.infinity,
                    child: RaisedButton(
                      elevation: 5.0,
                      onPressed: () => print("boutton d'envoie"),
                      padding: EdgeInsets.all(15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Colors.white,
                      child: Text('Envoyer',style: TextStyle(color: Color.fromRGBO(10, 31, 110, 1),letterSpacing: 1.5,fontSize: 18.0,fontWeight: FontWeight.bold,fontFamily: 'hyundai'),),),
                  )
                ]
              )
            )
          )
        ]
      )
    );
  }
}
