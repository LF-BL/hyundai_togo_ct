/*import 'dart:ui';

import 'package:hyundai_togo_ct/DB/appdata.dart';
import 'package:hyundai_togo_ct/DB/appmethode.dart';
import 'package:hyundai_togo_ct/DB/apptool.dart';
import 'package:hyundai_togo_ct/DB/firebasemethode.dart';
import 'package:hyundai_togo_ct/component/sinscrire.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_sign_in/google_sign_in.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  BuildContext context;
  AppMethods appMethod= new FirebaseMethods();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    this.context = context;

    return Scaffold(
      key: scaffoldKey,
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
                  appTextField(
                      isPassword: false, sidePadding: 18.0,
                      textHint:"Adresse e-mail",
                      textIcon: Icons.email,
                      controller: email
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  appTextField(
                      isPassword: true,
                      sidePadding: 18.0,
                      textHint:"Mot de passe",
                      textIcon: Icons.vpn_key,
                      controller: password
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
                      (onPressed: ()=> Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context)=> new Sinscrire())),

                      padding: EdgeInsets.only(right: 0.0),
                      child: Text("INSCRIVEZ-VOUS" ,
                        style: TextStyle(color: Colors.white,fontFamily: 'hyundai'),
                      ),
                    ),
                  ),
            appButton(
              onbtnclicked: verifyloggin(),
              btnTxt: 'CONNEXION'
            ),
                ],

              )
          ),

        ),
      ),

    );
  }

  verifyloggin () async{
    if (email.text == ""){
      showSnackbar("Email cannot be empty ", scaffoldKey);
      return;
    }

    if (password.text ==""){
      showSnackbar("Password cannot be empty", scaffoldKey);
      return;
    }

    displayProgressDialog(context);
    String response =
    await appMethod.logginUser(email: email.text,password: password.text);
    if(response == successful){
      closeProgressDialog(context);
      Navigator.of(context).pop();
    }else{
      closeProgressDialog(context);
      showSnackbar(response, scaffoldKey);
    }
  }
}*/





