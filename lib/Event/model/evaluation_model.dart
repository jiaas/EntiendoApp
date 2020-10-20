import 'package:entiendo/Event/bloc/event_provider.dart';
import 'package:entiendo/Event/model/subject_model.dart';

class Evaluation {
  //Properties
  int id;
  String name;
  Subject subject = Subject();

  //Constructor
  Evaluation({
    this.id,
    this.name,
    this.subject,
  });

  Evaluation.fromJsonMap(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    if(json['subject'] != null) subject = Subject.fromJsonMap(json['subject']);
  }
}