import 'package:entiendo/Event/model/event_model.dart';
import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class ModalShowEvent extends StatelessWidget {
  Event event;

  ModalShowEvent(this.event);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextFormField(
              initialValue: "${event.name}",
              style: TextStyle(
                  color: Color(0xFF0C0D4A),
                  fontSize: 25,
                  fontFamily: "sf-compact",
                  fontWeight: FontWeight.w700),
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF7559EE),width: 5)
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF7559EE),width: 8),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.calendar_today,
                  color: Colors.black26,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 105,
                  child: TextFormField(
                    initialValue: "${(formatDate(DateTime.parse(event.date.toString()), [
                      dd,
                      '-',
                      mm,
                      '-',
                      yyyy
                    ]))}",
                    style: TextStyle(
                        color: Color(0xFF0C0D4A),
                        fontSize: 20,
                        fontFamily: "sf-compact",
                        fontWeight: FontWeight.w600),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.access_time,
                  color: Colors.black26,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "${event.startTime} - ${event.endTime}",
                  style: TextStyle(
                      color: Color(0xFF0C0D4A),
                      fontSize: 20,
                      fontFamily: "sf-compact",
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),

          ],
        ),
      ),
    );
  }
}
