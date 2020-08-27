import 'package:hyundai_togo_ct/sav/pages/sos.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:hyundai_togo_ct/constant.dart';

class RSA extends StatefulWidget {
  @override
  _RSAState createState() => _RSAState();
}

class _RSAState extends State<RSA> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  int _value = 52;

  Future<void> _plusdinfo(BuildContext context){
    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text("91039292"),
                onTap: (){
                },
              ),
            ],
          ),
        ),
      );
    });
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
              height: 150,
              decoration: BoxDecoration(

                image: DecorationImage(
                    image: AssetImage('assets/garage/rsa.jpg'
                    ),
                    fit: BoxFit.fill
                ),
              ),

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  FlatButton.icon(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,horizontal: 10.0
                    ),
                    onPressed: (){
                      _plusdinfo(context);
                    },
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    icon: const Icon(Icons.phone,
                    color: Colors.white,),
                    label: Text('Appeler',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'hyundai'),),
                    textColor: Colors.white,
                  ),
                  FlatButton.icon(

                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0,horizontal: 10.0
                    ),
                    onPressed: ()=> Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context)=> SOS())),
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    icon: const Icon(Icons.warning,
                      color: Colors.white,),
                    label: Text('SOS',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'hyundai'),),
                    textColor: Colors.white,
                  )
                ],
              ),
            ),

            SizedBox(height: 10.0,),
            Container(
              color: Colors.white54,
              child: Text('RECUPERER ET EVENEMENTIEL', style: TextStyle(color: Color.fromRGBO(10, 31, 110, 1),fontSize: 17.0,fontWeight: FontWeight.w600,fontFamily: 'hyundai'),),
            ),
            Container(
               height: 180,
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 20),
                // alignment: Alignment.bottomLeft,
                //padding: EdgeInsets.symmetric(horizontal: 100.0,vertical: 20.0,),
                child: GridView.count(
                  crossAxisCount: 3,
                  childAspectRatio: 1.10,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 15,
                  children: <Widget>[
                    CategoryCard(
                      road_name: " ",
                      road_picture: "assets/assets/images/remorquer.jpg",
                      press: (){},
                    ),
                    CategoryCard(
                      road_name: "",
                      road_picture: "assets/assets/images/essence.jpg",
                      press: (){},
                    ),
                    CategoryCard(
                      road_name: "",
                      road_picture: "assets/assets/images/taxi.jpg",
                      press: (){},
                    ),
                    CategoryCard(
                      road_name: "",
                      road_picture: "assets/assets/images/pneu.jpg",
                      press: (){},
                    ),
                    CategoryCard(
                      road_name: "",
                      road_picture: "assets/assets/images/batterie.jpg",
                      press: (){},
                    ),
                    CategoryCard(
                      road_name: "",
                      road_picture: "assets/assets/images/clef.jpg",
                      press: (){},
                    ),
                  ],
                ),

              ),

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
                      child: new Text("Regime d'assistance pour un an"),

                    ),
                    new DropdownMenuItem(
                      child: new Text("Regime d'assistance pour 3 ans"),

                    ),
                    new DropdownMenuItem(
                      child:
                      new Text(
                        "Selectionner un regime d'accident"
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
              height: 5,
            ),
            Container(
              alignment: Alignment.center,
              child: FlatButton
                (onPressed: () => print('Pour plus dinfo'),
                padding: EdgeInsets.only(right: 0.0),
                child: Text("Pour plus d'info",
                  style: TextStyle(color: Color.fromRGBO(10, 31, 110, 1),fontFamily: 'hyundai'),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0,horizontal: 30.0
                    ),
                    onPressed: (){},
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: Text('Annuler',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'hyundai'),),
                    textColor: Color.fromRGBO(10, 31, 110, 1) ),
                FlatButton(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0,horizontal: 20.0
                    ),
                    onPressed: (){},
                    color: Color.fromRGBO(10, 31, 110, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: Text('Continuer',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'hyundai'),),
                    textColor: Colors.white )
              ],
            )
          ],
        ),
    ]
      )

    );
  }
}


class CategoryCard extends StatelessWidget {
  final road_name;
  final road_picture;
  final Function press;
  const CategoryCard({
    this.press,
    this.road_name,
    this.road_picture,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
            color: Colors.white,
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
            tag: road_name,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: press,
                child: GridTile(
                    footer: Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 0,vertical: 5),
                      padding: EdgeInsets.symmetric(vertical: 0),
                      decoration: BoxDecoration(color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),

                        child: Center(
                          child: ListTile(
                            leading: Text(road_name, style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'hyundai',color: Colors.white),),

                          ),
                        ),

                    ),
                    child: Image.asset(road_picture,
                      fit: BoxFit.fitHeight,
                    )
                ),
              ),
            )
        )

    );
  }
}
