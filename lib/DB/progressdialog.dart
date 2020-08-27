import 'package:flutter/material.dart';

class ProgressDialog extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black.withAlpha(200),
      child: Center(
        child: new Container(
          padding: const EdgeInsets.all(30),
          child: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: new Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new CircularProgressIndicator(),
                  new SizedBox(height: 15.0,),
                  new Text("please wait...",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700
                  ),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}