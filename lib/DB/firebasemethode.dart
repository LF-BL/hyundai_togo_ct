/*import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'appdata.dart';
import 'apptool.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:hyundai_togo_ct/DB/appmethode.dart';


class FirebaseMethods implements AppMethods {
  Firestore firestore = Firestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Future <String> createUserAccount({
    String fullName,String email, String password, String confirmPassword
}) async{
    FirebaseUser user;

    try{
      user = (await auth.createUserWithEmailAndPassword(email: email, password: password)) as FirebaseUser;

      if(user !=null){
        await firestore
            .collection(usersData)
            .document(user.uid)
            .setData({userID : user.uid,
          fullName: fullName,
          userEmail:email,
          userPassword:password});

          writeDataLocally(key: userID,value: user.uid);
          writeDataLocally(key: fullName,value: fullName);
          writeDataLocally(key: userEmail,value: userEmail);
          writeDataLocally(key: userPassword,value: userPassword);

      }

    } on PlatformException catch (e){
      //print(e.details);
      return errorMSG(e.details);
    }
    return user == null? errorMSG("Errors") : successfulMSG();
    }


  @override
  Future<String> logginUser({ String email, String password}) async{
    // TODO: implement logginUser
    //throw UnimplementedError();
    FirebaseUser user;
    try{
     user = (await auth.signInWithEmailAndPassword(email: email, password: password)) as FirebaseUser;

    } on PlatformException catch (e){
      //print(e.details);
      return errorMSG(e.details);
    }

    return user == null? errorMSG("Errors") : successfulMSG();
  }

  Future<bool> complete() async{
    return true;
  }

  Future<bool> notComplete() async {
    return false;
  }

  Future <String> successfulMSG() async {
    return successful;
  }

  Future<String> errorMSG(String e) async {
    return e;
  }

}*/