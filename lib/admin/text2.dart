/*import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hyundai_togo_ct/DB/appdata.dart';
import 'package:hyundai_togo_ct/DB/appmethode.dart';
import 'package:hyundai_togo_ct/DB/apptool.dart';
import 'package:hyundai_togo_ct/DB/firebasemethode.dart';

class Sinscrire extends StatefulWidget {
  @override
  _SinscrireState createState() => _SinscrireState();
}

class _SinscrireState extends State<Sinscrire> {


  TextEditingController fullname = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController confirmpassword = new TextEditingController();
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  BuildContext context;
  AppMethods appMethod= new FirebaseMethods();

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
        key: scaffoldKey,
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

                            appTextField(
                                isPassword: false, sidePadding: 18.0,
                                textHint:"Nom",
                                textIcon: Icons.person,
                                controller: fullname
                            ),

                            SizedBox(
                              height: 30.0,
                            ),

                            appTextField(
                                isPassword: false, sidePadding: 18.0,
                                textHint:"Adress e-mail",
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
                              height: 30.0,
                            ),
                            appTextField(
                                isPassword: true,
                                sidePadding: 18.0,
                                textHint:"Confirmer mot de passe",
                                textIcon: Icons.vpn_key,
                                controller: confirmpassword
                            ),


                            appButton(
                                onbtnclicked: verifydetail(),
                                btnTxt: "ENVOYER", btnPadding: 20.0)
                          ]
                      )
                  )
              )
            ]
        )
    );
  }

  verifydetail () async{
    if (fullname.text == ""){
      showSnackbar("Fullname cannot be empty ", scaffoldKey);
      return;
    }

    if (email.text == ""){
      showSnackbar("Email cannot be empty ", scaffoldKey);
      return;
    }

    if (password.text ==""){
      showSnackbar("Password cannot be empty", scaffoldKey);
      return;
    }

    if (password.text != confirmpassword.text){
      showSnackbar("The password is not correct", scaffoldKey);
      return;
    }

    displayProgressDialog(context);
    String response = await appMethod.createUserAccount(
        fullName: fullname.text,
        email: email.text.toLowerCase(),
        password: password.text.toLowerCase()
    );

    if(response == successful){
      closeProgressDialog(context);
      Navigator.of(context).pop();
      Navigator.of(context).pop();
    }else{
      closeProgressDialog(context);
      showSnackbar(response, scaffoldKey);
    }
  }



}*/
