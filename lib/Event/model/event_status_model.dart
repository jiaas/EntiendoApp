import 'package:entiendo/Event/bloc/event_provider.dart';

class EventStatus {
  //Properties
  int id;
  String name;

  //Constructor
  EventStatus({
    this.id,
    this.name,
  });

  EventStatus.fromJsonMap(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }
}