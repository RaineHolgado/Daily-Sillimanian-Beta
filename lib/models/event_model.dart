import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Events {
  String? id;
  String? id_Organizations;
  String? id_Users;
  Timestamp? date_Created;
  Timestamp? date;
  String? orgLogo;
  String? orgName;
  String? eventImage;
  String? title;
  Events({
    this.id,
    this.id_Organizations,
    this.id_Users,
    this.date_Created,
    this.date,
    this.orgLogo,
    this.orgName,
    this.eventImage,
    this.title,
  });

  String? get toDate => this.date != null
      ? DateFormat("MMMM dd, yyyy")
          .format(DateTime.parse(this.date!.toDate().toString()))
      : null;

  Events copyWith({
    String? id,
    String? id_Organizations,
    String? id_Users,
    Timestamp? date_Created,
    Timestamp? date,
    String? orgLogo,
    String? orgName,
    String? eventImage,
    String? title,
  }) {
    return Events(
      id: id ?? this.id,
      id_Organizations: id_Organizations ?? this.id_Organizations,
      id_Users: id_Users ?? this.id_Users,
      date_Created: date_Created ?? this.date_Created,
      date: date ?? this.date,
      orgLogo: orgLogo ?? this.orgLogo,
      orgName: orgName ?? this.orgName,
      eventImage: eventImage ?? this.eventImage,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'id_Organizations': id_Organizations,
      'id_Users': id_Users,
      'date_Created': date_Created,
      'date': date,
      'orgLogo': orgLogo,
      'orgName': orgName,
      'eventImage': eventImage,
      'title': title,
    };
  }

  factory Events.fromMap(Map<String, dynamic>? map) {
    return Events(
      id: map?['id'],
      id_Organizations: map?['id_Organizations'],
      id_Users: map?['id_Users'],
      date_Created: map?['date_Created'],
      date: map?['date'],
      orgLogo: map?['orgLogo'],
      orgName: map?['orgName'],
      eventImage: map?['eventImage'],
      title: map?['title'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Events.fromJson(String source) => Events.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Events(id: $id, id_Organizations: $id_Organizations, id_Users: $id_Users, date_Created: $date_Created, date: $date, orgLogo: $orgLogo, orgName: $orgName, eventImage: $eventImage, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Events &&
        other.id == id &&
        other.id_Organizations == id_Organizations &&
        other.id_Users == id_Users &&
        other.date_Created == date_Created &&
        other.date == date &&
        other.orgLogo == orgLogo &&
        other.orgName == orgName &&
        other.eventImage == eventImage &&
        other.title == title;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        id_Organizations.hashCode ^
        id_Users.hashCode ^
        date_Created.hashCode ^
        date.hashCode ^
        orgLogo.hashCode ^
        orgName.hashCode ^
        eventImage.hashCode ^
        title.hashCode;
  }
}
