import 'package:entiendo/Event/model/event_model.dart';
import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class ModalShowEvent extends StatelessWidget {
  Event event;

  ModalShowEvent(this.event);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            "${event.name} - Javier Quinteros",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontFamily: "HKGrotesk-Medium",
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 10,
          ),
          Row(children: <Widget>[
            Icon(Icons.calendar_today, color: Color(0xFF5468FF),),
            SizedBox(width: 10,),
            Text(
              "${(formatDate(DateTime.parse(event.date.toString()), [
                dd,
                '-',
                mm,
                '-',
                yyyy
              ]))}",
              style: TextStyle(
                color: Color(0xFF344356).withOpacity(0.8),
                fontSize: 18,
                fontFamily: "HKGrotesk-Medium",
              ),
            ),
          ],),
          SizedBox(height: 10,),
          Row(children: <Widget>[
            Icon(Icons.access_time, color: Color(0xFF5468FF),),
            SizedBox(width: 10,),
            Text(
              "${event.startTime} - ${event.endTime}",
              style: TextStyle(
                color: Color(0xFF344356).withOpacity(0.8),
                fontSize: 18,
                fontFamily: "HKGrotesk-Medium",
              ),
            ),
          ],),
          SizedBox(
            height: 10,
          ),
          Text(
            "Bla bla bla bla bla bla",
            style: TextStyle(
              color: Color(0xFF344356).withOpacity(0.8),
              fontSize: 25,
              fontFamily: "HKGrotesk-Medium",
            ),
          ),
        ],
      ),
    );
  }
}
