import 'package:entiendo/Event/model/event_status_model.dart';
import 'package:entiendo/Event/model/subject_model.dart';
import 'package:entiendo/Event/model/curso_model.dart';
import 'package:entiendo/Event/model/estado_evento_model.dart';
import 'package:entiendo/Event/model/evaluation_model.dart';
import 'package:entiendo/Event/model/event_type_model.dart';

class Event {
  //Properties
  int id;
  String name;
  DateTime date;
  String startTime;
  String endTime;

  //Propiedades Objeto
  EventStatus eventStatus = EventStatus();
  EventType eventType = EventType();
  Evaluation evaluation = Evaluation();

  //Constructor
  Event({
    this.id,
    this.name,
    this.date,
    this.startTime,
    this.endTime,
    this.eventStatus,
    this.eventType,
    this.evaluation
  });

  //Parse a <- List of Events -> from Json List
  List<Event> getEventosFromJsonList(List<dynamic> jsonList) {
    List<Event> listaEventos = new List();
    if (jsonList == null) {
      listaEventos = [];
    } else {
      for (var item in jsonList) {
        final event = new Event.fromJsonMap(item);
        listaEventos.add(event);
      }
    }
    return listaEventos;
  }

  //Parse <-One Event-> from Json Map
  Event.fromJsonMap(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    date = json['date'];
    startTime = json['startTime'];
    endTime = json['endTime'];

    eventStatus = json['status'];
    eventType = json['type'];
    evaluation = json['evaluation'];
    //asignatura.id = json['asignatura_id'];

  }
}
