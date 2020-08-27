import 'package:flutter/material.dart';
import 'package:hyundai_togo_ct/sav/pages/myaccount.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.white54,
        title: Image.asset("assets/g.png", fit: BoxFit.cover),

      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0,),
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
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0)
                        ),
                        child: Text('Détails du vehicule',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'hyundai'),),
                        textColor: Color.fromRGBO(10, 31, 110, 1) ),
                    FlatButton(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0,horizontal: 15.0
                        ),
                        onPressed: (){},
                        color: Color.fromRGBO(10, 31, 110, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0)
                        ),
                        child: Text('Détails personnel',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'hyundai'),),
                        textColor: Colors.white )
                  ],
                ),
                SizedBox(height: 10.0,),
                Container(
                  height: 60.0,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top:14.0),
                      labelText: 'Nom:',
                      labelStyle: TextStyle(fontSize: 16.0,fontFamily: 'hyundai'),
                    ),
                  ),
                ),
                Container(
                  height: 60.0,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top:14.0),
                      labelText: 'E-mail:',
                      labelStyle: TextStyle(fontSize: 16.0,fontFamily: 'hyundai'),
                    ),
                  ),
                ),

                Container(
                  height: 60.0,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top:14.0),
                      labelText: 'Contact:',
                      labelStyle: TextStyle(fontSize: 16.0,fontFamily: 'hyundai'),
                    ),
                  ),
                ),

                Container(
                  height: 60.0,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top:14.0),
                      labelText: 'Sexe',
                      labelStyle: TextStyle(fontSize: 16.0,fontFamily: 'hyundai'),
                    ),
                  ),
                ),
                Container(
                  height: 60.0,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top:14.0),
                      labelText: 'Age:',
                      labelStyle: TextStyle(fontSize: 16.0,fontFamily: 'hyundai'),
                    ),
                  ),
                ),

              ],
          )
        ],
      ),
    );
  }
}
