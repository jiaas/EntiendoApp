import 'package:entiendo/Event/model/event_model.dart';
import 'package:entiendo/Event/ui/widgets/activity_card_widget.dart';
import 'package:flutter/material.dart';

class ActivityList extends StatelessWidget {
  final List<Event> events;

  ActivityList(
    this.events,
  );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RefreshIndicator(
        onRefresh: refresh,
        child: ListView(
          padding: EdgeInsets.all(0),
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 10,
              ),
              child: Text(
                "En la mañana",
                style: TextStyle(
                  fontFamily: "HKGrotesk-Bold",
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF344356),
                ),
              ),
            ),
            getEvents(this.events, "morning"),
            Container(
              margin: EdgeInsets.only(
                top: 15,
                bottom: 10,
                left: 10,
              ),
              child: Text(
                "Por la tarde",
                style: TextStyle(
                  fontFamily: "HKGrotesk-Bold",
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF344356),
                ),
              ),
            ),
            getEvents(this.events, "afternoon"),
            Container(
              margin: EdgeInsets.only(left: 10, top: 25),
              child: Text(
                "En la noche",
                style: TextStyle(
                  fontFamily: "HKGrotesk-Bold",
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF344356),
                ),
              ),
            ),
            getEvents(this.events, "night"),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }

  Future<void> refresh() {
    return Future.value();
  }
}

Widget getEvents(List<Event> eventos, String partOfDay) {
  if (eventos.where((e) => e.partOfDay == partOfDay).toList().length > 0) {
    eventos.sort((a, b) => a.eventEndTime.compareTo(b.eventStartTime));
    return new Column(
        children: eventos
            .map((item) => new ActivityCard(item))
            .where((e) => e.event.partOfDay == partOfDay)
            .toList());
  } else {
    return Card(
      elevation: 1.5,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Container(
        height: 300,
        margin: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 5,
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                child: Image.asset("assets/images/free_time.png"),
              ),
              Text(
                "No tienes eventos, aprovecha tu tiempo libre.",
                style: TextStyle(
                  fontFamily: "HKGrotesk-Medium",
                  fontSize: 15,
                  color: Color(0xFF344356).withOpacity(0.8),
                ),
              ),
            ],
          ),
        ),
        padding: EdgeInsets.all(10),
      ),
    );
  }
}
