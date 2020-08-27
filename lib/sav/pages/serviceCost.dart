import 'package:flutter/material.dart';

class ServiceCost extends StatefulWidget {
  @override
  _ServiceCostState createState() => _ServiceCostState();
}


class _ServiceCostState extends State<ServiceCost> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  int  _value =52;
  List<Widget> _buildCells(int count) {
    return List.generate(
      count,
          (index) => Container(
        alignment: Alignment.center,
        width: 120.0,
        height: 60.0,
        color: Colors.white,
        margin: EdgeInsets.all(4.0),
        child: Text("${index + 1}", style: Theme.of(context).textTheme.title),
      ),
    );
  }

  List<Widget> _buildRows(int count) {
    return List.generate(
      count,
          (index) => Row(
        children: _buildCells(3),
      ),
    );
  }
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
            Column(
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
                SizedBox(height: 10.0,),
                Container(
                  height: 30,
                  color: Colors.white54,
                  alignment: Alignment.center,
                  child: Text('COUT DU SERVICE PREVU', style: TextStyle(color: Color.fromRGBO(10, 31, 110, 1),fontSize: 17.0,fontWeight: FontWeight.w600,fontFamily: 'hyundai'),),
                ),
                SizedBox(height: 20.0,),
                Theme(
                  data: Theme.of(context).copyWith(
                    canvasColor: Colors.white,

                  ),
                  child: new DropdownButton(

                    dropdownColor: Colors.white,
                    isExpanded: true,
                    value: _value,
                    items: <DropdownMenuItem<int>>[
                      new DropdownMenuItem(
                        child: new Text('200 km'),

                      ),
                      new DropdownMenuItem(
                        child: new Text('150 km'),

                      ),
                      new DropdownMenuItem(
                        child: new Text('150 km'),

                      ),
                      new DropdownMenuItem(
                        child: new Text('150 km'),

                      ),
                      new DropdownMenuItem(
                        child: new Text('150 km'),

                      ),
                      new DropdownMenuItem(
                        child: new Text('150 km'),

                      ),
                      new DropdownMenuItem(
                        child: new Text('150 km'),

                      ),
                      new DropdownMenuItem(
                        child: new Text('150 km'),

                      ),
                      new DropdownMenuItem(
                        child: new Text('150 km'),

                      ),
                      new DropdownMenuItem(
                        child: new Text('150 km'),

                      ),
                      new DropdownMenuItem(
                        child: new Text('150 km'),

                      ),
                      new DropdownMenuItem(
                        child: new Text('150 km'),

                      ),
                      new DropdownMenuItem(
                        child: new Text('150 km'),

                      ),
                      new DropdownMenuItem(
                        child: new Text('150 km'),

                      ),
                      new DropdownMenuItem(
                        child: new Text('150 km'),

                      ),
                      new DropdownMenuItem(
                        child: new Text('150 km'),

                      ),
                      new DropdownMenuItem(
                        child:
                        new Text(
                            "Selectionner le kilométrage du service"
                        ),
                        value: 52,
                      ),
                    ],
                    onChanged: (int value) {
                      setState(() {
                        _value = value;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5,vertical: 0),
                    child: Table(
                      border: TableBorder.all(),
                      children: [
                        TableRow( children: [
                          Column(children:[
                            Text("Main d'oeuvre")
                          ]),
                          Column(children:[
                            Text('Partie')
                          ]),
                          Column(children:[
                            Text('Facturer')
                          ]),
                        ]),
                        TableRow( children: [
                          Column(children:[
                            Text('')
                          ]),
                          Column(children:[
                            Text('')
                          ]),
                          Column(children:[
                            Text('')
                          ]),
                        ]),
                      ],
                    ),
                  ),
                ]),

                SizedBox(height: 10,),

                Container(
                  height: 40,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  color: Colors.white54,
                  alignment: Alignment.center,
                  child: Text('Partie Probable /Consommable à utiliser', style: TextStyle(color: Color.fromRGBO(10, 31, 110, 1),fontSize: 17.0,fontWeight: FontWeight.w600,fontFamily: 'hyundai'),),
                ),
                SizedBox(height: 10,),
                Column(children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5,vertical: 0),
                    child: Table(
                      border: TableBorder.all(),
                      children: [
                        TableRow( children: [
                          Column(children:[
                            Text('Description')
                          ]),
                          Column(children:[
                            Text('Prix')
                          ]),
                        ]),
                        TableRow( children: [
                          Column(children:[
                            Text('')
                          ]),
                          Column(children:[
                            Text('')
                          ]),
                        ]),
                      ],
                    ),
                  ),
                ]),

              ],
            )
          ],
        )
    );
  }
}

class Name {
  String Labour;
  String Part;
  String Total;

  Name({this.Labour, this.Part, this.Total});
}

var names = <Name>[
  Name(Labour: "", Part: "", Total: ""),
];
