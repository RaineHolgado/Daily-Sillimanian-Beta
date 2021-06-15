// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice_model_fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NoticeModel _$_$_NoticeModelFromJson(Map<String, dynamic> json) {
  return _$_NoticeModel(
    id: json['id'] as String?,
    published: json['published'] == null
        ? null
        : DateTime.parse(json['published'] as String),
    title: json['title'] as String?,
    label: json['label'] as String?,
    descriptions: json['descriptions'] as String?,
    startDate: json['startDate'] == null
        ? null
        : DateTime.parse(json['startDate'] as String),
    endDate: json['endDate'] == null
        ? null
        : DateTime.parse(json['endDate'] as String),
    timeline: (json['timeline'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : ProgramTimelineModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    going: json['going'] as int?,
    like: json['like'] as int?,
  );
}

Map<String, dynamic> _$_$_NoticeModelToJson(_$_NoticeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'published': instance.published?.toIso8601String(),
      'title': instance.title,
      'label': instance.label,
      'descriptions': instance.descriptions,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'timeline': instance.timeline,
      'going': instance.going,
      'like': instance.like,
    };

_$_ProgramTimelineModel _$_$_ProgramTimelineModelFromJson(
    Map<String, dynamic> json) {
  return _$_ProgramTimelineModel(
    title: json['title'] as String?,
    description: json['description'] as String?,
    time: json['time'] == null ? null : DateTime.parse(json['time'] as String),
  );
}

Map<String, dynamic> _$_$_ProgramTimelineModelToJson(
        _$_ProgramTimelineModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'time': instance.time?.toIso8601String(),
    };
