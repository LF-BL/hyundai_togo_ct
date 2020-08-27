import 'package:flutter/material.dart';

class Notificate extends StatefulWidget {
  @override
  _NotificateState createState() => _NotificateState();
}

class _NotificateState extends State<Notificate> {
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
              height: 250,
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
              color: Colors.white,
              child: ListTile(
                title: Text('Special offer on extent',style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, fontFamily: 'hyundai', color: Colors.white ),),
                subtitle: Text(
                  'Immatriculation',style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, fontFamily: 'hyundai', color: Colors.white ),
                ),
              )
          )
        ],

      ),
    );
  }
}