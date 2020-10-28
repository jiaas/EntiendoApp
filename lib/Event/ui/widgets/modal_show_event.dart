import 'package:entiendo/Event/model/event_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModalShowEvent extends StatelessWidget {
  Event event;

  ModalShowEvent(this.event);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 30, left: 30, right: 30),
            child: TextFormField(
              initialValue: "${event.name}",
              style: TextStyle(
                  color: Color(0xFF20205E),
                  fontSize: 30,
                  fontFamily: "sf-compact",
                  fontWeight: FontWeight.w700),
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: _getColorByType(event)[0], width: 5)),
                focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: _getColorByType(event)[0], width: 8),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Tipo de Reunión",
                        style: TextStyle(
                          color: Color(0xFFA3A3B5),
                          fontFamily: "sf-compact",
                          fontSize: 23,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: _getColorByType(event)[1],
                          borderRadius:
                              new BorderRadius.all(Radius.circular(40.0)),
                        ),
                        padding: EdgeInsets.all(8),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              margin:
                                  EdgeInsets.only(left: 10, right: 20, top: 0),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.videocam,
                                  color: _getColorByType(event)[0],
                                  //getColorByType(widget.event.eventType.id)[0],
                                  size: 25,
                                ),
                              ),
                            ),
                            Text(
                              event.eventType.name,
                              style: TextStyle(
                                  color: _getColorByType(event)[0],
                                  fontFamily: "sf-compact",
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Divider(thickness: 1.5),
                      ), //event.eventType.id),
                      /*              Row(
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
                              initialValue:
                              "${(formatDate(DateTime.parse(event.date.toString()), [
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
                      ),*/
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.watch_later,
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
                      Container(
                        padding: EdgeInsets.only(left: 35),
                        child: Text(
                          "Jueves, 22 de Octubre",
                          style: TextStyle(
                            color: Color(0xFFA8A9BA),
                            fontFamily: "sf-compact",
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 30, top: 15),
                        child: Row(
                          children: [
                            Container(
                              width: 50.0,
                              height: 35.0,
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image:
                                        Image.asset('assets/images/avatar1.png')
                                            .image),
                              ),
                            ),
                            Container(
                              width: 50.0,
                              height: 35.0,
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image:
                                        Image.asset('assets/images/avatar2.png')
                                            .image),
                              ),
                            ),
                            Container(
                              width: 50.0,
                              height: 35.0,
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image:
                                        Image.asset('assets/images/avatar3.png')
                                            .image),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 500,
                      ),
                      //
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 5, left: 30, right: 30, bottom: 20),
            child: CupertinoButton(
              padding: EdgeInsets.all(15),
              onPressed: () {},
              color: _getColorByType(event)[0],
              child: Center(
                child: Text(
                  'Guardar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontFamily: "sf-compact",
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  List<Color> _getColorByType(Event event) {
    List<Color> listaColores = List<Color>();

    switch (event.eventType.id) {
      case 1:
        {
          listaColores.add(Color(0xFF948BFF));
          listaColores.add(Color(0xffEFEEFF));
          return listaColores;
        }
      case 2:
        {
          listaColores.add(Color(0xFFFF6363));
          listaColores.add(Color(0xFFFFF1F1));
          return listaColores;
        }
      case 3:
        {
          listaColores.add(Color(0xFF1BC3D5));
          listaColores.add(Color(0xFFE5F7F8));
          return listaColores;
        }
      case 4:
        {
          listaColores.add(Color(0xFFFF9C2C));
          listaColores.add(Color(0xFFFCF0E4));
          return listaColores;
        }
      case 5:
        {
          listaColores.add(Color(0xFF9da669));
          listaColores.add(Color(0xFFE2F0CB));
          return listaColores;
        }
    }
  }
}
