import 'package:flutter/material.dart';

class RendezVous extends StatefulWidget {
  @override
  _RendezVousState createState() => _RendezVousState();
}

class _RendezVousState extends State<RendezVous> {
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

        body: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(20),
          height: double.infinity,
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
                          labelText: 'Select Date:',
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
                          labelText: 'Select Time:',
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
        )
    );
  }
}
