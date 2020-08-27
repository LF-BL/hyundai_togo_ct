import 'package:flutter/material.dart';

class CallCustomerCare extends StatefulWidget {
  @override
  _CallCustomerCareState createState() => _CallCustomerCareState();
}

class _CallCustomerCareState extends State<CallCustomerCare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Color.fromRGBO(10, 31, 110, 1),
        title: Text('Call Customer Care'),
      ),
    );
  }
}
