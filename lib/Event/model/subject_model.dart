
import 'package:entiendo/Event/model/grade_model.dart';

class Subject {
  //Properties
  int id;
  String name;
  Grade grade = Grade();

  //Constructor
  Subject({
    this.id,
    this.name,
    this.grade
  });
}