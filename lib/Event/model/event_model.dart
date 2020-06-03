class Event {
  String eventDate;
  String eventSchedule;
  String courseName;
  String eventName;
  double eventScore;
  String studentRut;
  String studentName;
  String proffesorRut;
  String eventStatus;
  String partOfDay;

  Event({
    this.eventDate,
    this.eventSchedule,
    this.courseName,
    this.eventName,
    this.eventScore,
    this.studentRut,
    this.studentName,
    this.proffesorRut,
    this.eventStatus,
    this.partOfDay,
  });

  Event.fromJsonMap(Map<String, dynamic> json) {
    eventDate = json['eventDate'];
    eventSchedule = json['eventSchedule'];
    courseName = json['courseName'];
    eventName = json['eventName'];
    eventScore = json['eventScore'] / 1;
    studentRut = json['studentRut'];
    studentName = json['studentName'];
    proffesorRut = json['proffesorRut'];
    eventStatus = json['eventStatus'];
    partOfDay = json['partOfDay'];
  }

  List<Event> getEvents(List<dynamic> jsonList) {
    List<Event> eventsList = new List();
    if (jsonList == null) {
      eventsList = [];
    } else {
      for (var item in jsonList) {
        final event = new Event.fromJsonMap(item);
        eventsList.add(event);
      }
    }

    return eventsList;
  }
}
