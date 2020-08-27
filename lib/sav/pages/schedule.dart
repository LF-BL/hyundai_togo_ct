import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';


class Schedule extends StatefulWidget {
  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  int _value = 52;

  DateTime _date = DateTime.now();
  Future <Null> _selectDate(BuildContext context) async{
    DateTime _datePicker = await showDatePicker(context: context, initialDate: _date, firstDate: DateTime(2015), lastDate: DateTime(2030),
      textDirection: TextDirection.ltr,
      initialDatePickerMode: DatePickerMode.day,
      selectableDayPredicate: (DateTime val)=> val.weekday ==6 || val.weekday ==7? false: true,
      /*builder: (BuildContext context, Widget child){
    return Theme(data: ThemeData(primarySwatch: Colors.indigo,primaryColor: Colors.red,), child: null);
  }*/
    );
    if (_datePicker != null && _datePicker != _date){
      setState(() {
        _date= _datePicker;
        print(_date.toString(),);
      });
    }
  }
  TimeOfDay _time= TimeOfDay.now();

  Future <Null> _selectTime(BuildContext context) async{
    TimeOfDay _timePicker = await showTimePicker(context: context, initialTime: _time);
    if (_timePicker != null && _timePicker != _time){
      setState(() {
        _time= _timePicker;
        print(_time.toString(),);
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

        body: Column(
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
              alignment: Alignment.center,
              margin: EdgeInsets.all(20),
              height: 400,
              color: Colors.black12,
              child:SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: 15.0,
                  //vertical: 10.0,
                ),
                child: Column(
                  children: <Widget>[
                    //SizedBox(height: 15,),
                    Container(
                      margin: EdgeInsets.all(12),
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          //canvasColor: Colors.white,

                        ),
                        child: new DropdownButton(
                          dropdownColor: Colors.white,
                          isExpanded: true,
                          value: _value,
                          items: <DropdownMenuItem<int>>[
                            new DropdownMenuItem(
                              child: new Text('service1'),

                            ),
                            new DropdownMenuItem(
                              child: new Text('service2'),

                            ),
                            new DropdownMenuItem(
                              child:
                              new Text(
                                  "Type de service"
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
                    ),

                    SizedBox(
                      height: 30,
                    ),

                    Column(
                      children: <Widget>[
                        Container(

                          height: 50.0,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(5.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 3.0,
                                    offset: Offset(0, 2)
                                )
                              ]
                          ),

                          child: TextField(
                            readOnly: true,
                            onTap: (){
                              setState(() {
                                _selectDate(context);
                              });
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top:10.0),
                              labelText: 'Selectionner la date:',
                              labelStyle: TextStyle(color:Color.fromRGBO(10, 31, 110, 1),fontSize: 16.0,fontFamily: 'hyundai'),
                              hintText: (_date.toString()),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 30,
                        ),

                        Container(

                          height: 50.0,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(5.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 3.0,
                                    offset: Offset(0, 2)
                                )
                              ]
                          ),

                          child: TextFormField(
                            readOnly: true,
                            onTap: (){
                              setState(() {
                                _selectTime(context);
                              });
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top:10.0),
                              labelText: "Selectionner l'heure:",
                              labelStyle: TextStyle(color:Color.fromRGBO(10, 31, 110, 1),fontSize: 16.0,fontFamily: 'hyundai'),
                              hintText: (_time.toString()),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 30,
                        ),

                        Container(
                          padding: EdgeInsets.symmetric(vertical: 25.0),
                          width: double.infinity,
                          child: RaisedButton(
                            elevation: 5.0,
                            onPressed: () => print("boutton d'envoie"),
                            padding: EdgeInsets.all(15.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            color: Colors.white,
                            child: Text('Envoyer',style: TextStyle(color: Color.fromRGBO(10, 31, 110, 1),letterSpacing: 1.5,fontSize: 18.0,fontWeight: FontWeight.bold,fontFamily: 'hyundai'),),),
                        )
                      ],
                    ),

                  ],
                ),
              ),
            ),
          ],
        )
    );
  }
}
