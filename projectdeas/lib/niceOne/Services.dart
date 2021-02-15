import 'package:http/http.dart' as http;
import 'Events.dart';
class Services {

  //
  static const String url = 'https://my-json-server.typicode.com/skrfffe1/deas/events';

  static Future<List<Events>> getEvents() async{
      try {
        final response = await http.get(url);
        if (200 == response.statusCode) {
            final List<Events> events = eventsFromMap(response.body).cast<Events>();
            return events;
        } else {
             return List<Events>();
        }
      } catch (e) {

        return List<Events>();
      }
  }

}