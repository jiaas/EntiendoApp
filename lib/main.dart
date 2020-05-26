import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Event/ui/widgets/activity_list_widget.dart';
import 'Event/ui/widgets/calendar_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
            ActivityList(),
          ],
        ),
      ),
    );
  }
}
