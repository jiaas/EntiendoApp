import 'package:date_time_picker/date_time_picker.dart';
import 'package:entiendo/Event/model/event_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModalShowEvent extends StatelessWidget {
  Event event;

  ModalShowEvent(this.event);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
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
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      "Tipo de Reunión",
                      style: TextStyle(
                        color: Color(0xFFA3A3B5),
                        fontFamily: "sf-compact",
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: _getColorByType(event)[1],
                      borderRadius: new BorderRadius.all(Radius.circular(40.0)),
                    ),
                    padding:
                        EdgeInsets.only(top: 8, bottom: 8, left: 0, right: 8),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 15),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.videocam,
                              color: _getColorByType(event)[0],
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
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Hora de Inicio",
                          style: TextStyle(
                            color: Color(0xFFA3A3B5),
                            fontFamily: "sf-compact",
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: _getColorByType(event)[1],
                            borderRadius:
                                new BorderRadius.all(Radius.circular(40.0)),
                          ),
                          padding: EdgeInsets.all(8),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    left: 10, right: 10, top: 0),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.watch_later,
                                    color: _getColorByType(event)[0],
                                    size: 25,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: DateTimePicker(
                                  type: DateTimePickerType.time,
                                  initialValue: event.startTime,
                                  style: TextStyle(
                                      color: _getColorByType(event)[0],
                                      fontFamily: "sf-compact",
                                      fontSize: 20),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    counterText: "",
                                  ),
                                  onChanged: (val) => print(val),
                                  validator: (val) {
                                    print(val);
                                    return null;
                                  },
                                  onSaved: (val) => print(val),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Hora de Término",
                          style: TextStyle(
                            color: Color(0xFFA3A3B5),
                            fontFamily: "sf-compact",
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: _getColorByType(event)[1],
                            borderRadius:
                                new BorderRadius.all(Radius.circular(40.0)),
                          ),
                          padding: EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    left: 10, right: 10, top: 0),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.watch_later,
                                    color: _getColorByType(event)[0],
                                    size: 25,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: DateTimePicker(
                                  type: DateTimePickerType.time,
                                  initialValue: event.endTime,
                                  style: TextStyle(
                                      color: _getColorByType(event)[0],
                                      fontFamily: "sf-compact",
                                      fontSize: 20),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    counterText: "",
                                  ),
                                  onChanged: (val) => print(val),
                                  validator: (val) {
                                    print(val);
                                    print(val + val);
                                    return null;
                                  },
                                  onSaved: (val) => print(val),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 4),
                                child: Text(
                                  "hrs. ",
                                  style: TextStyle(
                                      color: _getColorByType(event)[0],
                                      fontFamily: "sf-compact",
                                      fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 20),
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
        ),
      ],
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
