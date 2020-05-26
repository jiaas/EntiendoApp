import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';

import 'search_bar_widget.dart';

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
              width: 360,
              height: 100,
              child: Column(
                children: <Widget>[
                  Text(
                    "Hoy es Viernes 22",
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
                    "A Mayo le quedan 9 días, pero tu solo enfocate en ser feliz el día de hoy.",
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
                    SearchBar(),
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
