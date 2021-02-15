// To parse this JSON data, do
//
//     final events = eventsFromMap(jsonString);

import 'dart:convert';

List<Events> eventsFromMap(String str) => List<Events>.from(json.decode(str).map((x) => Events.fromMap(x)));

String eventsToMap(List<Events> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));


class Events {
    Events({
        this.eventId,
        this.semesterId,
        this.schoolYearId,
        this.studentMonitorId,
        this.eventName,
        this.eventDate,
        this.eventTimeIn,
        this.eventTimeInDuration,
        this.eventTimeOut,
        this.eventTimeOutDuration,
        this.eventLocation,
        this.createdAt,
        this.updatedAt,
    });

    String eventId;
    String semesterId;
    String schoolYearId;
    String studentMonitorId;
    String eventName;
    String eventDate;
    String eventTimeIn;
    String eventTimeInDuration;
    String eventTimeOut;
    String eventTimeOutDuration;
    String eventLocation;
    DateTime createdAt;
    DateTime updatedAt;

    factory Events.fromMap(Map<String, dynamic> json) => Events(
        eventId: json["event_id"],
        semesterId: json["semester_id"],
        schoolYearId: json["school_year_id"],
        studentMonitorId: json["student_monitor_id"],
        eventName: json["event_name"],
        eventDate: json["event_date"],
        eventTimeIn: json["event_time_in"],
        eventTimeInDuration: json["event_time_in_duration"],
        eventTimeOut: json["event_time_out"],
        eventTimeOutDuration: json["event_time_out_duration"],
        eventLocation: json["event_location"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toMap() => {
        "event_id": eventId,
        "semester_id": semesterId,
        "school_year_id": schoolYearId,
        "student_monitor_id": studentMonitorId,
        "event_name": eventName,
        "event_date": eventDate,  
        "event_time_in": eventTimeIn,
        "event_time_in_duration": eventTimeInDuration,
        "event_time_out": eventTimeOut,
        "event_time_out_duration": eventTimeOutDuration,
        "event_location": eventLocation,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}

