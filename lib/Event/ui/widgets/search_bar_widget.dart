import 'package:entiendo/Event/repositories/events_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF5468FF),
      elevation: 1.5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
      ),
      margin: EdgeInsets.symmetric(vertical: 0),
      child: Container(
        width: 315,
        height: 60,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  flex: 100,
                  child: TextField(
                    textCapitalization: TextCapitalization.sentences,
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "HKGrotesk-Medium",
                        color: Colors.white //Color(0xFF344356),
                        ),
                    cursorColor: Colors.white,
                    decoration: InputDecoration.collapsed(
                        hintText: "Alumno, asignatura, etc... ",
                        hintStyle:
                            TextStyle(color: Colors.white.withOpacity(0.9))),
                  ),
                ),
                Spacer(),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color(0xFF5468FF),
                  ),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(100.0),
                    ),
                    onPressed: () {
                      print("presionado");
                      _getEvents();
                    },
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _getEvents() {
    final eventsProvider = new EventsProvider();
    eventsProvider.getEvents();
  }
}
