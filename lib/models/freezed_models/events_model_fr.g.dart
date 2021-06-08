// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events_model_fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Events _$_$_EventsFromJson(Map<String, dynamic> json) {
  return _$_Events(
    id: json['id'] as String?,
    published: json['published'] == null
        ? null
        : DateTime.parse(json['published'] as String),
    title: json['title'] as String?,
    descriptions: json['descriptions'] as String?,
    startDate: json['startDate'] == null
        ? null
        : DateTime.parse(json['startDate'] as String),
    endDate: json['endDate'] == null
        ? null
        : DateTime.parse(json['endDate'] as String),
    timeline: (json['timeline'] as List<dynamic>?)
        ?.map((e) => e == null ? null : DateTime.parse(e as String))
        .toList(),
    going: json['going'] as int?,
    liked: json['liked'] as int?,
  );
}

Map<String, dynamic> _$_$_EventsToJson(_$_Events instance) => <String, dynamic>{
      'id': instance.id,
      'published': instance.published?.toIso8601String(),
      'title': instance.title,
      'descriptions': instance.descriptions,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'timeline': instance.timeline?.map((e) => e?.toIso8601String()).toList(),
      'going': instance.going,
      'liked': instance.liked,
    };
