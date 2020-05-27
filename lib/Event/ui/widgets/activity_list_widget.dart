import 'package:flutter/material.dart';

import 'activity_card_widget.dart';

class ActivityList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
          ActivityCard(
            "completed",
            "09:30-10:30",
            "Artes Visuales",
            "Evaluación N°1",
            "Javier Quinteros",
          ),
          ActivityCard(
            "completed",
            "10:30-11:30",
            "Artes Visuales",
            "Evaluación N°1",
            "Lucas Hernández",
          ),
          ActivityCard(
            "completed",
            "11:30-12:30",
            "Ciencias Sociales",
            "Evaluación N°1",
            "Valentina Gallardo",
          ),
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
    );
  }
}
