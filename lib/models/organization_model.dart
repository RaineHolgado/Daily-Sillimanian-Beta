import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';

class Organization {
  String? id;
  String? orgName;
  String? orgLogo;
  Timestamp? date_Created;
  Organization({
    this.id,
    this.orgName,
    this.orgLogo,
    this.date_Created,
  });

  Organization copyWith({
    String? id,
    String? orgName,
    String? orgLogo,
    Timestamp? date_Created,
  }) {
    return Organization(
      id: id ?? this.id,
      orgName: orgName ?? this.orgName,
      orgLogo: orgLogo ?? this.orgLogo,
      date_Created: date_Created ?? this.date_Created,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'orgName': orgName,
      'orgLogo': orgLogo,
      'date_Created': date_Created,
    };
  }

  factory Organization.fromMap(Map<String, dynamic>? map) {
    return Organization(
      id: map?['id'],
      orgName: map?['orgName'],
      orgLogo: map?['orgLogo'],
      date_Created: map?['date_Created'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Organization.fromJson(String source) => Organization.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Organization(id: $id, orgName: $orgName, orgLogo: $orgLogo, date_Created: $date_Created)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Organization &&
      other.id == id &&
      other.orgName == orgName &&
      other.orgLogo == orgLogo &&
      other.date_Created == date_Created;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      orgName.hashCode ^
      orgLogo.hashCode ^
      date_Created.hashCode;
  }
}
