import 'package:flutter/cupertino.dart';
//import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter/material.dart';
//import 'package:hyundai_togo_ct/DB/appdata.dart';
//import 'package:hyundai_togo_ct/DB/apptool.dart';
//import 'package:flutter_svg/flutter_svg.dart';
//import 'package:hyundai_togo_ct/Component/categoryselector.dart';
import 'package:hyundai_togo_ct/sav/pages/about.dart';
//import 'package:hyundai_togo_ct/pages/carevolution.dart';
import 'package:hyundai_togo_ct/sav/pages/login.dart';
import 'package:hyundai_togo_ct/sav/pages/GIT.dart';
import 'package:hyundai_togo_ct/sav/pages/message.dart';
import 'package:hyundai_togo_ct/sav/pages/myaccount.dart';
import 'package:hyundai_togo_ct/sav/pages/schedule.dart';
//import 'package:hyundai-togo_ct/sav/pages/change_car.dart';
//import 'package:hyundai_togo_ct/sav/pages/RSA.dart';
import 'package:hyundai_togo_ct/sav/pages/serviceCost.dart';
//import 'package:hyundai_togo_ct/sav/pages/servicebooking.dart';
//import 'package:hyundai_togo_ct/sav/pages/setreminder.dart';
import 'package:hyundai_togo_ct/sav/pages/servicehistory.dart';
import 'package:hyundai_togo_ct/constant.dart';
//import 'package:hyundai_togo_ct/pages/offer.dart';
import 'package:hyundai_togo_ct/sav/pages/sos.dart';
import 'package:hyundai_togo_ct/sav/pages/notification.dart';
import 'dart:io';



class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  BuildContext context;
 // String acctName;
  //String acctemail;
 // String acctphotoURL;
 // bool isLoggedIn;

  @override
  void initState() {
    // TODO: implement initState
   // getCurrentUser();
    super.initState(
      //fullName = getDataLocally(fullName);
    );
  }

  /*Future getCurrentUser() async{
    acctName = await getStringDataLocally(key: fullName);
    acctemail = await getStringDataLocally(key: userEmail);
    acctphotoURL = await getStringDataLocally(key: userphotoUrl);
    isLoggedIn = await getBoolDataLocally(key: userisloggedin);
    setState(() {

    });
  }*/


  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Scaffold(

      //Appbar

      appBar: new AppBar(
        elevation: 0.1,
        //backgroundColor: Color.fromRGBO(10, 31, 110, 1),
        backgroundColor: Colors.white54,
        //backgroundColor: Color.fromRGBO(39, 85, 252, 1),
        title: Image.asset("assets/g.png", fit: BoxFit.cover, alignment: Alignment.center,),

      ),

      //Menu

      drawer: new Drawer(

        child: new ListView(
          children: <Widget>[
            // header

            /* new UserAccountsDrawerHeader(
                accountName: Text(acctName),
                accountEmail: Text(acctemail),
                currentAccountPicture: GestureDetector(

                  child: new CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white,),
                  ),
                ),
                decoration: new BoxDecoration(
                    color: Color.fromRGBO(10, 31, 110, 1),

                ),

              ),*/

            // Body


            InkWell(
              onTap:()=> Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context)=> new login())),
              child: ListTile(
                title: Text('Connexion',style: TextStyle(fontFamily: 'hyundai')),
                leading: Icon(Icons.label_important, color: Colors.grey,),
              ),
            ),

            InkWell(
              onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context)=> new MyAccount())),
              child: ListTile(
                title: Text('Mon compte',style: TextStyle(fontFamily: 'hyundai')),
                leading: Icon(Icons.person, color: Colors.grey,),
              ),
            ),

            InkWell(
              onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context)=> new ChatScreen())),
              child: ListTile(
                title: Text('Message',style: TextStyle(fontFamily: 'hyundai')),
                leading: Icon(Icons.question_answer, color: Colors.grey,),
              ),
            ),

           /* InkWell(
              onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context)=> new SetReminder())),
              child: ListTile(
                title: Text('Rappel',style: TextStyle(fontFamily: 'hyundai'),),
                leading: Icon(Icons.access_alarm, color: Colors.grey,),
              ),
            ),*/


            InkWell(
              onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context)=> new Schedule())),
              child: ListTile(
                title: Text('Reservation de service',style: TextStyle(fontFamily: 'hyundai')),
                leading: Icon(Icons.view_agenda, color: Colors.grey,),
              ),
            ),

            InkWell(
              onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context)=> new ServiceCost())),
              child: ListTile(
                title: Text('Devis',style: TextStyle(fontFamily: 'hyundai')),
                leading: Icon(Icons.date_range, color: Colors.grey,),
              ),
            ),

            InkWell(
              onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context)=> new ServiceHistory())),
              child: ListTile(
                title: Text('Historique services',style: TextStyle(fontFamily: 'hyundai')),
                leading: Icon(Icons.history, color: Colors.grey,),
              ),
            ),


            InkWell(
              onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context)=> new About())),
              child: ListTile(
                title: Text('A propos',style: TextStyle(fontFamily: 'hyundai')),
                leading: Icon(Icons.help, color: Colors.green,),
              ),
            ),
          ],
        ),
      ),

      // Body

      body: Container(
        color: Colors.white,
        child: Container(
          // Image de fond d'ecran
            decoration: new BoxDecoration(
              image: new DecorationImage(image: new AssetImage(
                  "assets/assets/garage.png"
              ),
                alignment: FractionalOffset.bottomCenter,
                fit: BoxFit.fitWidth,),
            ),


            child:Column(
                children: <Widget>[
                  //Menu du Haut
                  Container(
                    height: 35.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        // begin: Alignment.topCenter,
                        // end: Alignment.bottomCenter,
                          colors: [
                            Colors.grey,
                            Colors.white54,
                            Colors.indigo,
                            Colors.grey,
                          ] ,
                          stops: [0.1, 8.4, 0.7, 8.9]
                      ),
                    ),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            IconButton(icon: Icon (Icons.local_offer),
                              onPressed: ()=> Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (context)=> new Notificate()
                              ),

                              ),
                              color: Colors.white,),
                            Text("Offres",style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, fontFamily: 'hyundai', color: Colors.white ),),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            IconButton(icon: Icon (Icons.contacts),
                              onPressed: ()=> Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (context)=> new GetInTouch()
                              )
                              ),
                              color: Colors.white,),
                            Text("Service client",style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, fontFamily: 'hyundai', color: Colors.white ),),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            IconButton(icon: Icon (Icons.warning),
                              onPressed: ()=> Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (context)=> new SOS()
                              )
                              ),
                              color: Colors.red,),
                            Text("SOS",style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, fontFamily: 'hyundai', color: Colors.red ),),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    color: Color.fromRGBO(10, 31, 110, 1),
                    child: ListTile(
                      title: Text('Modèle',style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, fontFamily: 'hyundai', color: Colors.white ),),
                      subtitle: Text(
                        'Immatriculation',style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, fontFamily: 'hyundai', color: Colors.white ),
                      ),
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey,
                        backgroundImage: AssetImage(''),
                      ),
                    ),

                  ),
                  Container(
                    child: ListTile(
                      title: Text('Date du dernier service:',style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, fontFamily: 'hyundai', color: Colors.black45 ),),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      // alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 0.0,),
                      child: GridView.count(
                        crossAxisCount: 2,
                        childAspectRatio: 1.10,
                        crossAxisSpacing: 60,
                        mainAxisSpacing: 40,
                        children: <Widget>[
                          CategoryCard(
                            service_name: "Historique services ",
                            service_name2: "Premier service:",
                            press: ()=> Navigator.of(context).push(new MaterialPageRoute(
                                builder: (context)=> new ServiceHistory())),
                          ),
                          CategoryCard(
                            service_name: "Rendez-vous",
                            service_name2: "Prochain service: ",
                            press: ()=> Navigator.of(context).push(new MaterialPageRoute(
                                builder: (context)=> new Schedule())),
                          ),
                        ],

                      ),
                    ),
                  )


                  /* Padding(padding: EdgeInsets.all(30.0),

                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                        "",
                        style: Theme.of(context).textTheme.display1.copyWith(fontWeight: FontWeight.w900)
                    ),
                    ]

                ),
                )*/

                ]
            )
        ),
      ),
    );
  }
}



class CategoryCard extends StatelessWidget {
  final service_name;
  final service_name2;
  final Function press;
  const CategoryCard({
    this.press,
    this.service_name,
    this.service_name2,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          padding: EdgeInsets.all(0),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white,
                    Colors.grey,
                    Colors.indigo,
                    Colors.white54,
                  ] ,
                  stops: [0.1, 8.4, 0.7, 8.9]
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 17),
                  blurRadius: 17,
                  spreadRadius: -23,
                  color: kShadowColor,
                ),
              ]

          ),
          // alignment: FractionalOffset.center,
          child: Hero(
              tag: service_name,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: press,
                  child: GridTile(
                      footer: Container(
                        height: 38,
                        margin: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                        decoration: BoxDecoration(color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          subtitle: Text(service_name, style: TextStyle(fontWeight: FontWeight.w600,fontFamily: 'hyundai',color: Color.fromRGBO(10, 31, 110, 1)),),
                        ),
                      ),
                      child: ListTile(
                        title: Text(service_name2, style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,fontFamily: 'hyundai', color: Color.fromRGBO(10, 31, 110, 1)),),
                      )
                  ),
                ),
              )
          )
      ),

    );
  }
}




