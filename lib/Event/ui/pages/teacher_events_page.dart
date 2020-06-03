import 'package:entiendo/Event/repositories/events_provider.dart';
import 'package:entiendo/Event/ui/widgets/activity_list_widget.dart';
import 'package:entiendo/Event/ui/widgets/calendar_widget.dart';
import 'package:flutter/material.dart';

class TeacherEventsPage extends StatelessWidget {
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
          //SearchBar(),
          _getEventsCards(),
        ],
      ),
    );
  }
}

Widget _getEventsCards() {
  EventsProvider eventsProvider = EventsProvider();
  return FutureBuilder(
    future: eventsProvider.getEvents(),
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
