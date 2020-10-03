class Event {
  //Properties
  int eventId;
  String eventDate;
  String eventStartTime;
  String eventEndTime;
  String courseName;
  String eventName;
  String eventScore;
  String studentRut;
  String studentName;
  String proffesorRut;
  String eventStatus;
  String eventDescription;

  //Constructor
  Event({
    this.eventId,
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
    this.eventDescription,
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
    eventId = json['event_id'];
    eventName = json['event_name'];
    eventDate = json['event_date'];
    eventStartTime = json['event_start_time'];
    eventEndTime = json['event_end_time'];
    eventDescription = "Prueba numero uno correspondiente a la asignatura de lenguaje y comunicación.";
    eventScore = json['event_score'];
    courseName = json['course_name'];
    eventStatus = json['status_name'];
    studentName = json['student_name'];

  }
}
