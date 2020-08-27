/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:hyundai_togo_ct/DB/progressdialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'appdata.dart';

Widget appTextField({
  IconData textIcon,
  String textHint,
  String styleH,
  bool isPassword,
  double sidePadding,
  //TextInputType textType,
  TextEditingController controller}){

  sidePadding == null ? sidePadding = 0.0 : sidePadding;
  textHint == null ?textHint= "" : textHint;
  //textType == null? textType == TextInputType.text : textType;
  //textIcon == null ? new Container() : new textIcon;
  return Padding(
    padding: const EdgeInsets.only(left: 18.0, right: 18.0),
    child: new Container(
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
      child: new TextField(
        controller: controller,
        obscureText: isPassword == null ? false : isPassword,
        style: TextStyle(color: Color.fromRGBO(10, 31, 110, 1)),
      //  keyboardType: textType,
        decoration: new InputDecoration(
          border: InputBorder.none,
          hintText: textHint,
            hintStyle: TextStyle(fontFamily: 'hyundai',color: Color.fromRGBO(10, 31, 110, 1)),
            prefixIcon:
            textIcon == null ? new Container() : new Icon(textIcon),
          suffixIcon: isPassword == true ? new Container() :new IconButton(icon: null,onPressed: null,)
        ),
      ),
    ),
  );
}

Widget appButton ({
  String btnTxt,
  double btnPadding,
  VoidCallback onbtnclicked
}){
  btnTxt == null ? btnTxt == "App Button" : btnTxt;
  btnPadding == null ? btnPadding= 0.0 : btnPadding;
  return new RaisedButton(
    elevation: 5.0,
      onPressed: onbtnclicked,
    padding: EdgeInsets.all(15.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    color: Colors.white,

      child: new Text(btnTxt),

  );
}

showSnackbar (String message, final scaffoldKey){
  scaffoldKey.currentState.showSnackBar(new SnackBar(
      backgroundColor: Colors.black,
      content: new Text(message,
  style: new TextStyle(color: Colors.white),)));
}

Widget textField({TextEditingController controller})
{
  return new Padding(padding: const EdgeInsets.only(left: 18.0, right: 18.0),
  child: new Container(
    decoration: new BoxDecoration(
      color:Colors.white,
      border: new Border.all(color: Colors.white),
      borderRadius: new BorderRadius.all(new Radius.circular(4.0))
    ),
    child: new Padding(padding: const EdgeInsets.only(left: 8.0),
    child: new TextField(
      controller: controller,
      decoration:  new InputDecoration(
        border: InputBorder.none,
        hintText: "Enter full name",
        prefixIcon: new Padding(padding: const EdgeInsets.only(right: 8.0),
        child: new Icon(Icons.person,),
        )
      ),
    ),
    ),
  ),
  );
}

displayProgressDialog(BuildContext context) {
  Navigator.of(context).push(new PageRouteBuilder(
    opaque: false,
    pageBuilder: (BuildContext context, _, __){
      return new ProgressDialog();
    }
  ));
}

closeProgressDialog(BuildContext context){
  Navigator.of(context).pop();
}

/*try {
  if(user != null){
    await firestore.collection(usersData).document(user.uid).setData({
  uderID: user.uid,
  fullName: fullName,
  userEmail: email,
  userPassword: password,
});
    writeDataLocally(key: userID, value: user.uid);
    writeDataLocally(key: fullName, value: fullName);
    writeDataLocally(key: userEmail, value: email);
    writeDataLocally(key: userPassword, value: password);
}
} on PlatformException catch (e) {
  return errorMSG(e.details);
}

displayProgressDialogue(BuildContext context){
  Nagigator.of(context).push(new PageRouteBuilder(opaque: false,pageBuilder: (BuildContext context, _, _){
    return new ProgressDialog();
  }));
}

closeProgressDialog(BuildContext context){
  Navigator.of(context).pop();

}*/

writeDataLocally({String key, String value}) async{
  Future<SharedPreferences> saveLocal = SharedPreferences.getInstance();
  final SharedPreferences localData = await saveLocal;
  localData.setString(key, value);
}

getDataLocally({String key}) async{
  Future<SharedPreferences> saveLocal = SharedPreferences.getInstance();
  final SharedPreferences localData = await saveLocal;
  return localData.get(key);
}

getStringDataLocally({String key}) async{
  Future<SharedPreferences> saveLocal = SharedPreferences.getInstance();
  final SharedPreferences localData = await saveLocal;
  return localData.getString(key) == null ? "" : localData.getString(key);
}

getBoolDataLocally({String key}) async{
  Future<SharedPreferences> saveLocal = SharedPreferences.getInstance();
  final SharedPreferences localData = await saveLocal;
  return localData.getBool(key) == null ? false : localData.getBool(key);
}*/