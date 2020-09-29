import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:entiendo/Event/bloc/event_provider.dart';
import 'package:entiendo/Event/ui/pages/teacher_events_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'search_bar_widget.dart';

DateTime fecha = DateTime.now();

class CalendarTimeline extends StatefulWidget {
  @override
  _CalendarTimelineState createState() => _CalendarTimelineState();
}

class _CalendarTimelineState extends State<CalendarTimeline> {
  TeacherEventsPage teacherEventsPage;

  Widget currentPage;

  @override
  void initState() {
    super.initState();
    teacherEventsPage = TeacherEventsPage();

    currentPage = teacherEventsPage;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            width: 360,
            height: 50,
            child: Column(
              children: <Widget>[
                Text(
                  "Hoy es Viernes 22",
                  textAlign: TextAlign.end,
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
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
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

                            String date2 = DateFormat("dd-MM-yyyy").format(
                              DateTime.parse(
                                date.toString(),
                              ),
                            );

                            Provider.of<EventProvider>(context, listen: false)
                                .changeDate(date2);
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
