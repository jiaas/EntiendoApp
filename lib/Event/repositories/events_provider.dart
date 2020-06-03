import 'dart:convert';

import 'package:entiendo/Event/model/event_model.dart';
import 'package:http/http.dart' as http;

class EventsProvider {
  String _url = '192.168.0.23:1337';

  Future<List<Event>> getEvents() async {
    final url = Uri.http(_url, '/event');
    final response = await http.get(url);
    final decodedResponse = json.decode(response.body);

    final event = new Event();

    return event.getEvents(decodedResponse);
  }
}
