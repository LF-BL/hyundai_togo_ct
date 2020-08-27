import 'package:flutter/material.dart';

class EmailUs extends StatefulWidget {
  @override
  _EmailUsState createState() => _EmailUsState();
}

class _EmailUsState extends State<EmailUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Color.fromRGBO(10, 31, 110, 1),
        title: Text('Email Us'),
      ),
    );
  }
}
