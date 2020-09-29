class Event {
  //Properties
  String eventDate;

  String eventStartTime;
  String eventEndTime;
  String courseName;
  String eventName;
  double eventScore;
  String studentRut;
  String studentName;
  String proffesorRut;
  String eventStatus;
  String partOfDay;

  //Constructor
  Event({
    this.eventDate,

    this.eventStartTime,
    this.eventEndTime,
    this.courseName,
    this.eventName,
    this.eventScore,
    this.studentRut,
    this.studentName,
    this.proffesorRut,
    this.eventStatus,
    this.partOfDay,
  });

  //Parse a <- List of Events -> from Json List
  List<Event> getEventsFromJsonList(List<dynamic> jsonList) {
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

  //Parse <-One Event-> from Json Map
  Event.fromJsonMap(Map<String, dynamic> json) {
    eventDate = json['date'];

    eventStartTime = json['start_time'];
    eventEndTime = json['end_time'];
    courseName = "Matematicas";//json['courseName'];
    eventName = json['name'];
    //eventScore = json['event_score'] / 1;
    studentRut = "19.232.871-3";//json['studentRut'];
    studentName = "Javier Quinteros";//json['studentName'];
    proffesorRut = "10.140.244-4";json['proffesorRut'];
    eventStatus = "completed"; //json['eventStatus'];
    partOfDay = "morning";//json['partOfDay'];
  }
}
