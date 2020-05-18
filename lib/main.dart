import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        body: _Notifications(),
      ),
    );
  }
}

Widget _Notifications() {
  return Center(
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 100),
          Image.asset("assets/images/notificacion.png"),
          SizedBox(height: 50),
          Text(
            "Notificaciones",
            style: TextStyle(
              fontFamily: "HKGrotesk-Bold",
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xFF344356),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "Entiendo es una aplicación inteligente que te mantendrá notificado acerca de los cursos, noticias, tareas y eventos.",
            style: TextStyle(
              fontFamily: "HKGrotesk-Medium",
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: Color(0xFF344356),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 50,
          ),
          FlatButton(
            onPressed: () {},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "ACEPTAR",
                  style: TextStyle(
                      fontFamily: "HKGrotesk-Bold",
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white),
                ),
                CircleAvatar(
                  child: Icon(Icons.arrow_forward_ios),
                  backgroundColor: Color(0xFF3D56F0),
                  foregroundColor: Colors.white,
                )
              ],
            ),
            color: Color(0xFF5468FF),
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0),
            ),
          ),
        ],
      ),
    ),
  );
}
