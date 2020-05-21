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
            margin: EdgeInsets.only(left: 10),
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
        ],
      ),
    );
  }
}
