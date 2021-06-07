import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class Events {
  String? id;
  Timestamp? created_at;
  Events({
    this.id,
    this.created_at,
  });

  Events copyWith({
    String? id,
    Timestamp? created_at,
  }) {
    return Events(
      id: id ?? this.id,
      created_at: created_at ?? this.created_at,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'created_at': created_at,
    };
  }

  factory Events.fromMap(Map<String, dynamic>? map) {
    return Events(
      id: map?['id'],
      created_at: map?['created_at'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Events.fromJson(String source) => Events.fromMap(json.decode(source));

  @override
  String toString() => 'Events(id: $id, created_at: $created_at)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Events &&
      other.id == id &&
      other.created_at == created_at;
  }

  @override
  int get hashCode => id.hashCode ^ created_at.hashCode;
}
