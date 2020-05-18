import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        body: Calendario(),
      ),
    );
  }
}

DateTime fecha = DateTime.now();
int dia = fecha.day;
String fechaString = dia.toString();

class Calendario extends StatefulWidget {
  @override
  _CalendarioState createState() => _CalendarioState();
}

class _CalendarioState extends State<Calendario> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Center(
            child: Container(
              width: 350,
              height: 300,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 100),
                  Text(
                    "Hola, Javier",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "HKGrotesk-Bold",
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF344356),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "¿Qué cosas te esperan hoy? Nosotros te lo recordamos.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "HKGrotesk-Medium",
                      fontSize: 20,
                      color: Color(0xFF344356).withOpacity(0.8),
                    ),
                  ),
                  SizedBox(height: 10),
                  DatePicker(
                    DateTime.now(),
                    initialSelectedDate: DateTime.now(),
                    selectionColor: Color(0xFF5468FF),
                    selectedTextColor: Colors.white,
                    locale: "es_ES",
                    onDateChange: (date) {
                      setState(() {
                        fecha = date;
                        int dia = fecha.day;
                        fechaString = dia.toString();
                      });
                    },
                  ),
                  Text("El dia $fechaString"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
