import 'package:flutter/material.dart';

class SetReminder extends StatefulWidget {
  @override
  _SetReminderState createState() => _SetReminderState();
}

class _SetReminderState extends State<SetReminder> {

  int _value = 52;
  DateTime _date = DateTime.now();
  Future <Null> _selectDate(BuildContext context) async{
    DateTime _datePicker = await showDatePicker(context: context, initialDate: _date, firstDate: DateTime(2015), lastDate: DateTime(2030),
      textDirection: TextDirection.ltr,
      initialDatePickerMode: DatePickerMode.day,
      selectableDayPredicate: (DateTime val)=> val.weekday ==6 || val.weekday ==7? false: true,

    );
    if (_datePicker != null && _datePicker != _date){
      setState(() {
        _date= _datePicker;
        print(_date.toString(),);
      });
    }
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
        body:ListView(
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
                      backgroundImage: AssetImage(''),
                    ),
                  ),

                ),

                SizedBox(height: 15,),

                Container(
                  /*child: RaisedButton(onPressed: (){
                  setState(() {
                    _selectDate(context);
                  });
                },
                child: Text('Data picker'),*/
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        readOnly: false,
                        onTap: (){
                          setState(() {
                            _selectDate(context);
                          });
                        },
                        decoration: InputDecoration(
                            labelText: 'Date de depart',
                            labelStyle: TextStyle(fontSize: 16.0),
                            //hintText: (_date.toString()),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white54,width: 2.0),)
                        ),
                      ),



                      TextFormField(
                        readOnly: false,
                        onTap: (){
                          setState(() {
                            _selectDate(context);
                          });
                        },

                        decoration: InputDecoration(
                            labelText: "Date d'expiration",
                            labelStyle: TextStyle(fontSize: 16.0),
                            //hintText: (_date.toString()),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white54,width: 2.0),)
                        ),
                      ),

                      SizedBox(height: 15.0,),
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
                              child: Text('Cancel',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'hyundai'),),
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
                              child: Text('Continue',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'hyundai'),),
                              textColor: Colors.white )
                        ],
                      )

                    ],
                  ),
                )

              ],
            )
          ],
        )
    );
  }
}
