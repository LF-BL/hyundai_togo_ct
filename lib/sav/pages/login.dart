import 'package:flutter/material.dart';
import 'package:hyundai_togo_ct/component/sinscrire.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      body: Center(
        child: Container(
          height: 500,
          color: Colors.black12,
          margin: EdgeInsets.all(12),

          child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 100.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Image(image: AssetImage('assets/lg.png')),
                  SizedBox(height: 30.0,),
                  Container(
                    alignment: Alignment.centerLeft,
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
                    height: 60.0,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      style: TextStyle(color: Color.fromRGBO(10, 31, 110, 1)),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top:14.0),
                        prefixIcon: Icon(Icons.email,
                          color: Color.fromRGBO(10, 31, 110, 1),),
                        hintText: 'E-mail',
                        hintStyle: TextStyle(fontFamily: 'hyundai',color: Color.fromRGBO(10, 31, 110, 1)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
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
                    height: 60.0,
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(color: Color.fromRGBO(10, 31, 110, 1)),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top:14.0),
                        prefixIcon: Icon(Icons.vpn_key,
                          color: Color.fromRGBO(10, 31, 110, 1),),
                        hintText: 'Mot de passe',
                        hintStyle: TextStyle(fontFamily: 'hyundai',color: Color.fromRGBO(10, 31, 110, 1)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: FlatButton
                      (onPressed: () => print('Mot de passe oublié'),
                      padding: EdgeInsets.only(right: 0.0),
                      child: Text('Mot de passe oublié?',
                        style: TextStyle(color: Colors.white,fontFamily: 'hyundai'),
                      ),
                    ),
                  ),

                  Container(
                    alignment: Alignment.centerRight,
                    child: FlatButton
                      (
                      onPressed: ()
                      => Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context)=> new Sinscrire())),

                      padding: EdgeInsets.only(right: 0.0),
                      child: Text("INSCRIVEZ-VOUS" ,
                        style: TextStyle(color: Colors.white,fontFamily: 'hyundai'),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 25.0),
                    width: double.infinity,
                    child: RaisedButton(
                      elevation: 5.0,
                      onPressed: () => print('boutton de connection'),
                      padding: EdgeInsets.all(15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Colors.white,
                      child: Text('CONNEXION',style: TextStyle(color: Color.fromRGBO(10, 31, 110, 1),letterSpacing: 1.5,fontSize: 18.0,fontWeight: FontWeight.bold,fontFamily: 'hyundai'),),),
                  )
                ],

              )
          ),

        ),
      ),

    );
  }
}
