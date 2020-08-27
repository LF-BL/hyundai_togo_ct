import 'package:flutter/material.dart';

class WeAreSocial extends StatefulWidget {
  @override
  _WeAreSocialState createState() => _WeAreSocialState();
}

class _WeAreSocialState extends State<WeAreSocial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Color.fromRGBO(10, 31, 110, 1),
        title: Text('We Are Social'),
      ),
    );
  }
}
