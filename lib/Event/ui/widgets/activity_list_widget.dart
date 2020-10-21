import 'package:entiendo/Event/model/event_model.dart';
import 'package:entiendo/Event/ui/widgets/activity_card_widget.dart';
import 'package:flutter/material.dart';

class ActivityList extends StatefulWidget {
  List<Event> events;

  ActivityList(this.events);

  @override
  _ActivityListState createState() => _ActivityListState();
}

class _ActivityListState extends State<ActivityList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RefreshIndicator(
        onRefresh: refresh,
        child: ListView(
          padding: EdgeInsets.all(0),
          children: <Widget>[

            getEvents(widget.events),

          ],
        ),
      ),
    );
  }

  Future<void> refresh() {
    return Future.value();
  }
}

Widget getEvents(List<Event> eventos) {
  if (eventos.toList().length > 0) {
    eventos.sort((a, b) => a.endTime.compareTo(b.startTime));
    return new Column(
        children: eventos.map((item) => new ActivityCard(item)).toList());
  } else {
    return Card(
      elevation: 0,
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
