import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PermissionsNotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 100),
            Container(
              height: 280,
              width: 280,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/notificacion.png"),
                ),
              ),
            ),
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
              "ENTIENDO es una aplicación inteligente que te notificará acerca de cursos, noticias, tareas y eventos.",
              style: TextStyle(
                fontFamily: "HKGrotesk-Medium",
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Color(0xFF344356),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 80,
            ),
            MaterialButton(
              height: 50,
              minWidth: 150,
              onPressed: () {
                print("ACEPTAR");
              },
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
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    ),
                    backgroundColor: Color(0xFF3D56F0),
                    foregroundColor: Colors.white,
                    radius: 15,
                  )
                ],
              ),
              color: Color(0xFF5468FF),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            FlatButton(
              onPressed: () {
                print("OMITIR");
              },
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
              child: Text(
                "OMITIR",
                style: TextStyle(
                  fontFamily: "HKGrotesk-Bold",
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xFF344356).withOpacity(0.6),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
