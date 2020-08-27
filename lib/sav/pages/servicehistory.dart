import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hyundai_togo_ct/sav/Component/historydata.dart';



class ServiceHistory extends StatefulWidget {
  @override
  _ServiceHistoryState createState() => _ServiceHistoryState();
}

class _ServiceHistoryState extends State<ServiceHistory> {
  _getSizes() {}

  _getPositions() {}
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
          Column(
            children: <Widget>[


              Card(
                child: new Column(
                  children: <Widget>[
                    new Padding(
                        padding: new EdgeInsets.all(7.0),
                        child: new Row(
                          children: <Widget>[
                            new Padding(
                              padding: new EdgeInsets.all(7.0),
                              child: new Text("Date:"),
                            ),
                            new Padding(
                              padding: new EdgeInsets.all(7.0),
                              child: new Text(
                                '---',
                                style: new TextStyle(fontSize: 18.0),
                              ),
                            ),

                          ],
                        )),
                    new Padding(
                        padding: new EdgeInsets.all(7.0),
                        child: new Row(
                          children: <Widget>[
                            new Padding(
                              padding: new EdgeInsets.all(7.0),
                              child: new Text("Kilometre du sevice:"),
                            ),
                            new Padding(
                              padding: new EdgeInsets.all(7.0),
                              child: new Text(
                                '---',
                                style: new TextStyle(fontSize: 18.0),
                              ),
                            ),

                          ],
                        )),
                    new Padding(
                        padding: new EdgeInsets.all(7.0),
                        child: new Row(
                          children: <Widget>[
                            new Padding(
                              padding: new EdgeInsets.all(7.0),
                              child: new Text("Montant:"),
                            ),
                            new Padding(
                              padding: new EdgeInsets.all(7.0),
                              child: new Text(
                                '---',
                                style: new TextStyle(fontSize: 18.0),
                              ),
                            ),

                          ],
                        )),

                    new Padding(
                        padding: new EdgeInsets.all(7.0),
                        child: new Row(
                          children: <Widget>[
                            new Padding(
                              padding: new EdgeInsets.all(7.0),
                              child: new Text("Deler name:"),
                            ),
                            new Padding(
                              padding: new EdgeInsets.all(7.0),
                              child: new Text(
                                '---',
                                style: new TextStyle(fontSize: 18.0),
                              ),
                            ),

                          ],
                        ))
                  ],
                ),
              ),
        Card(
          child: new Column(
            children: <Widget>[
              new Padding(
                  padding: new EdgeInsets.all(7.0),
                  child: new Row(
                    children: <Widget>[
                      new Padding(
                        padding: new EdgeInsets.all(7.0),
                        child: new Text("Date:"),
                      ),
                      new Padding(
                        padding: new EdgeInsets.all(7.0),
                        child: new Text(
                          '---',
                          style: new TextStyle(fontSize: 18.0),
                        ),
                      ),

                    ],
                  )),
              new Padding(
                  padding: new EdgeInsets.all(7.0),
                  child: new Row(
                    children: <Widget>[
                      new Padding(
                        padding: new EdgeInsets.all(7.0),
                        child: new Text("Kilometre du sevice:"),
                      ),
                      new Padding(
                        padding: new EdgeInsets.all(7.0),
                        child: new Text(
                          '---',
                          style: new TextStyle(fontSize: 18.0),
                        ),
                      ),

                    ],
                  )),
              new Padding(
                  padding: new EdgeInsets.all(7.0),
                  child: new Row(
                    children: <Widget>[
                      new Padding(
                        padding: new EdgeInsets.all(7.0),
                        child: new Text("Montant:"),
                      ),
                      new Padding(
                        padding: new EdgeInsets.all(7.0),
                        child: new Text(
                          '---',
                          style: new TextStyle(fontSize: 18.0),
                        ),
                      ),

                    ],
                  )),

              new Padding(
                  padding: new EdgeInsets.all(7.0),
                  child: new Row(
                    children: <Widget>[
                      new Padding(
                        padding: new EdgeInsets.all(7.0),
                        child: new Text("Deler name:"),
                      ),
                      new Padding(
                        padding: new EdgeInsets.all(7.0),
                        child: new Text(
                          '---',
                          style: new TextStyle(fontSize: 18.0),
                        ),
                      ),

                    ],
                  ))
            ],
          ),
        ),
              Card(
                child: new Column(
                  children: <Widget>[
                    new Padding(
                        padding: new EdgeInsets.all(7.0),
                        child: new Row(
                          children: <Widget>[
                            new Padding(
                              padding: new EdgeInsets.all(7.0),
                              child: new Text("Date"),
                            ),
                            new Padding(
                              padding: new EdgeInsets.all(7.0),
                              child: new Text(
                                '---',
                                style: new TextStyle(fontSize: 18.0),
                              ),
                            ),

                          ],
                        )),
                    new Padding(
                        padding: new EdgeInsets.all(7.0),
                        child: new Row(
                          children: <Widget>[
                            new Padding(
                              padding: new EdgeInsets.all(7.0),
                              child: new Text("Kilometre du sevice:"),
                            ),
                            new Padding(
                              padding: new EdgeInsets.all(7.0),
                              child: new Text(
                                '---',
                                style: new TextStyle(fontSize: 18.0),
                              ),
                            ),

                          ],
                        )),
                    new Padding(
                        padding: new EdgeInsets.all(7.0),
                        child: new Row(
                          children: <Widget>[
                            new Padding(
                              padding: new EdgeInsets.all(7.0),
                              child: new Text("Montant:"),
                            ),
                            new Padding(
                              padding: new EdgeInsets.all(7.0),
                              child: new Text(
                                '---',
                                style: new TextStyle(fontSize: 18.0),
                              ),
                            ),

                          ],
                        )),

                    new Padding(
                        padding: new EdgeInsets.all(7.0),
                        child: new Row(
                          children: <Widget>[
                            new Padding(
                              padding: new EdgeInsets.all(7.0),
                              child: new Text("Deler name:"),
                            ),
                            new Padding(
                              padding: new EdgeInsets.all(7.0),
                              child: new Text(
                                '---',
                                style: new TextStyle(fontSize: 18.0),
                              ),
                            ),

                          ],
                        ))
                  ],
                ),
              )
        ],
      ),
    ]
      )
    );
  }
}







