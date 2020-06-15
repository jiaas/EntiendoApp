import 'package:entiendo/Event/bloc/event_provider.dart';
import 'package:entiendo/Event/ui/widgets/activity_list_widget.dart';
import 'package:entiendo/Event/ui/widgets/calendar_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TeacherEventsPage extends StatefulWidget {
  @override
  _TeacherEventsPageState createState() => _TeacherEventsPageState();
}

class _TeacherEventsPageState extends State<TeacherEventsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F5F9),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SafeArea(
            child: SizedBox(height: 20),
          ),
          CalendarTimeline(),
          SizedBox(
            height: 10,
          ),
          _getEventsFromProvider(context),
          //getEventsCards(context),
        ],
      ),
    );
  }
}

Widget _getEventsFromProvider(BuildContext context) {
  return FutureBuilder(
    future: Provider.of<EventProvider>(context)
        .getEventsFromDb(Provider.of<EventProvider>(context).date),
    builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
      if (snapshot.hasData) {
        return ActivityList(snapshot.data);
      } else {
        return Container(
          height: 400.0,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      }
    },
  );
}
