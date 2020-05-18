import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'src/pages/permissions/permissions_notifications_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFF3F5F9),
        body: PermissionsNotificationsPage(),
      ),
    );
  }

  TeacherHomePage() {
    return Container();
  }
}
