import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'src/widgets/calendar_widget.dart';

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
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(0),
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 10),
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
                  Card(
                    elevation: 1.5,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 5,
                          ),
                          child: Text(
                            "09:30-10:30",
                            style: TextStyle(
                              fontFamily: "HKGrotesk-Medium",
                              fontSize: 18,
                              color: Color(0xFF344356).withOpacity(0.8),
                            ),
                          ),
                          padding: EdgeInsets.all(10),
                        ),
                        Container(
                          height: 50,
                          child: VerticalDivider(
                            color: Colors.green,
                            thickness: 5,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text("Javier Quinteros",
                                  style: TextStyle(
                                    fontFamily: "HKGrotesk-Bold",
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF344356),
                                  ),
                                  textAlign: TextAlign.left),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                "Artes Visuales",
                                style: TextStyle(
                                  fontFamily: "HKGrotesk-Medium",
                                  fontSize: 15,
                                  color: Color(0xFF344356),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                "Evaluación N°1",
                                style: TextStyle(
                                  fontFamily: "HKGrotesk-Medium",
                                  fontSize: 15,
                                  color: Color(0xFF344356),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 25),
                              child: CircleAvatar(
                                backgroundColor: Color(0xFF5468FF),
                                child: Text("7.0",
                                    style: TextStyle(
                                        fontFamily: "HKGrotesk-Medium",
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                    textAlign: TextAlign.left),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 1.5,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 5,
                          ),
                          child: Text(
                            "10:30-11:30 ",
                            style: TextStyle(
                              fontFamily: "HKGrotesk-Medium",
                              fontSize: 18,
                              color: Color(0xFF344356).withOpacity(0.8),
                            ),
                          ),
                          padding: EdgeInsets.all(10),
                        ),
                        Container(
                          height: 50,
                          child: VerticalDivider(
                            color: Colors.red,
                            thickness: 5,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text("Javier Quinteros",
                                  style: TextStyle(
                                    fontFamily: "HKGrotesk-Bold",
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF344356),
                                  ),
                                  textAlign: TextAlign.left),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                "Matemáticas",
                                style: TextStyle(
                                  fontFamily: "HKGrotesk-Medium",
                                  fontSize: 15,
                                  color: Color(0xFF344356),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                "Evaluación N°1",
                                style: TextStyle(
                                  fontFamily: "HKGrotesk-Medium",
                                  fontSize: 15,
                                  color: Color(0xFF344356),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 1.5,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 5,
                          ),
                          child: Text(
                            "11:30-12:30 ",
                            style: TextStyle(
                              fontFamily: "HKGrotesk-Medium",
                              fontSize: 18,
                              color: Color(0xFF344356).withOpacity(0.8),
                            ),
                          ),
                          padding: EdgeInsets.all(10),
                        ),
                        Container(
                            height: 50,
                            child: VerticalDivider(
                              color: Colors.amber,
                              thickness: 5,
                            )),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text("Javier Quinteros",
                                  style: TextStyle(
                                    fontFamily: "HKGrotesk-Bold",
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF344356),
                                  ),
                                  textAlign: TextAlign.left),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                "Ciencias Sociales",
                                style: TextStyle(
                                  fontFamily: "HKGrotesk-Medium",
                                  fontSize: 15,
                                  color: Color(0xFF344356),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                "Evaluación N°1",
                                style: TextStyle(
                                  fontFamily: "HKGrotesk-Medium",
                                  fontSize: 15,
                                  color: Color(0xFF344356),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 1.5,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 5,
                          ),
                          child: Text(
                            "12:30-13:30",
                            style: TextStyle(
                              fontFamily: "HKGrotesk-Medium",
                              fontSize: 18,
                              color: Color(0xFF344356).withOpacity(0.8),
                            ),
                          ),
                          padding: EdgeInsets.all(10),
                        ),
                        Container(
                          height: 50,
                          child: VerticalDivider(
                            color: Colors.amber,
                            thickness: 5,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text("Javier Quinteros",
                                  style: TextStyle(
                                    fontFamily: "HKGrotesk-Bold",
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF344356),
                                  ),
                                  textAlign: TextAlign.left),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                "Lenguaje y Comunicación",
                                style: TextStyle(
                                  fontFamily: "HKGrotesk-Medium",
                                  fontSize: 15,
                                  color: Color(0xFF344356),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                "Evaluación N°1",
                                style: TextStyle(
                                  fontFamily: "HKGrotesk-Medium",
                                  fontSize: 15,
                                  color: Color(0xFF344356),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 25),
                    child: Text(
                      "En la tarde",
                      style: TextStyle(
                        fontFamily: "HKGrotesk-Bold",
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF344356),
                      ),
                    ),
                  ),
                  Card(
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
                  ),
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
                  Card(
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
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
