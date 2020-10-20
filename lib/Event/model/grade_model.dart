
class Grade {
  //Properties
  int id;
  String name;

  //Constructor
  Grade({
    this.id,
    this.name,
  });

  Grade.fromJsonMap(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }
}