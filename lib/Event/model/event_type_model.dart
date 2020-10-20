import 'package:entiendo/Event/bloc/event_provider.dart';

class EventType {
  //Properties
  int id;
  String name;

  //Constructor
  EventType({
    this.id,
    this.name,
  });

  EventType.fromJsonMap(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }
}