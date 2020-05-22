import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';

DateTime fecha = DateTime.now();
int dia = fecha.day;
String fechaString = dia.toString();

class CalendarTimeline extends StatefulWidget {
  @override
  _CalendarTimelineState createState() => _CalendarTimelineState();
}

class _CalendarTimelineState extends State<CalendarTimeline> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Center(
            child: Container(
              width: 350,
              height: 100,
              child: Column(
                children: <Widget>[
                  Text(
                    "Hola, Ana María",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "HKGrotesk-Bold",
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF344356),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "¿Qué cosas te esperan hoy? Nosotros te lo recordamos.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "HKGrotesk-Medium",
                      fontSize: 20,
                      color: Color(0xFF344356).withOpacity(0.8),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Card(
              elevation: 1.5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    bottomLeft: Radius.circular(15.0)),
              ),
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              child: Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      child: DatePicker(
                        DateTime.now(),
                        initialSelectedDate: DateTime.now(),
                        selectionColor: Color(0xFF5468FF),
                        selectedTextColor: Colors.white,
                        locale: "es_ES",
                        onDateChange: (date) {
                          setState(() {
                            fecha = date;
                            int dia = fecha.day;
                            fechaString = dia.toString();
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Card(
                      color: Color(0xFF5468FF),
                      elevation: 1.5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0)),
                      ),
                      margin: EdgeInsets.symmetric(vertical: 0),
                      child: Container(
                        width: 345,
                        height: 60,
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 10,
                                ),
                                Flexible(
                                  flex: 100,
                                  child: TextField(
                                    textCapitalization:
                                        TextCapitalization.sentences,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: "HKGrotesk-Medium",
                                        color: Colors.white //Color(0xFF344356),
                                        ),
                                    cursorColor: Colors.white,
                                    decoration: InputDecoration.collapsed(
                                      hintText: "Alumno, asignatura, etc... ",
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    color: Color(0xFF5468FF),
                                  ),
                                  child: FlatButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(100.0),
                                    ),
                                    onPressed: () {
                                      print("presionado");
                                    },
                                    child: Icon(
                                      Icons.search,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
