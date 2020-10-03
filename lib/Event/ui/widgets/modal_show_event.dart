import 'package:entiendo/Event/model/event_model.dart';
import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class ModalShowEvent extends StatelessWidget {
  Event event;

  ModalShowEvent(this.event);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text("${event.eventName}"),
          Text("${event.studentName}"),
          Text("${(formatDate(DateTime.parse(event.eventDate), [
            dd,
            '-',
            mm,
            '-',
            yyyy
          ]))} / ${event.eventStartTime} - ${event.eventEndTime}"),
          Text("${event.eventDescription}"),
        ],
      ),
    );
  }
}
