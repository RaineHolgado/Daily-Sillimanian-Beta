// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'notice_model_fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoticeModel _$NoticeModelFromJson(Map<String, dynamic> json) {
  return _NoticeModel.fromJson(json);
}

/// @nodoc
class _$NoticeModelTearOff {
  const _$NoticeModelTearOff();

  _NoticeModel call(
      {String? id,
      DateTime? published,
      String? title,
      String? label,
      String? descriptions,
      DateTime? startDate,
      DateTime? endDate,
      List<ProgramTimelineModel?>? timeline,
      int? going,
      int? like}) {
    return _NoticeModel(
      id: id,
      published: published,
      title: title,
      label: label,
      descriptions: descriptions,
      startDate: startDate,
      endDate: endDate,
      timeline: timeline,
      going: going,
      like: like,
    );
  }

  NoticeModel fromJson(Map<String, Object> json) {
    return NoticeModel.fromJson(json);
  }
}

/// @nodoc
const $NoticeModel = _$NoticeModelTearOff();

/// @nodoc
mixin _$NoticeModel {
  String? get id => throw _privateConstructorUsedError;
  DateTime? get published => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  /// **label** can be a value "event" or "activity"
  String? get label => throw _privateConstructorUsedError;
  String? get descriptions => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  List<ProgramTimelineModel?>? get timeline =>
      throw _privateConstructorUsedError;
  int? get going => throw _privateConstructorUsedError;
  int? get like => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoticeModelCopyWith<NoticeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeModelCopyWith<$Res> {
  factory $NoticeModelCopyWith(
          NoticeModel value, $Res Function(NoticeModel) then) =
      _$NoticeModelCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      DateTime? published,
      String? title,
      String? label,
      String? descriptions,
      DateTime? startDate,
      DateTime? endDate,
      List<ProgramTimelineModel?>? timeline,
      int? going,
      int? like});
}

/// @nodoc
class _$NoticeModelCopyWithImpl<$Res> implements $NoticeModelCopyWith<$Res> {
  _$NoticeModelCopyWithImpl(this._value, this._then);

  final NoticeModel _value;
  // ignore: unused_field
  final $Res Function(NoticeModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? published = freezed,
    Object? title = freezed,
    Object? label = freezed,
    Object? descriptions = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? timeline = freezed,
    Object? going = freezed,
    Object? like = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      published: published == freezed
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptions: descriptions == freezed
          ? _value.descriptions
          : descriptions // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timeline: timeline == freezed
          ? _value.timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as List<ProgramTimelineModel?>?,
      going: going == freezed
          ? _value.going
          : going // ignore: cast_nullable_to_non_nullable
              as int?,
      like: like == freezed
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$NoticeModelCopyWith<$Res>
    implements $NoticeModelCopyWith<$Res> {
  factory _$NoticeModelCopyWith(
          _NoticeModel value, $Res Function(_NoticeModel) then) =
      __$NoticeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      DateTime? published,
      String? title,
      String? label,
      String? descriptions,
      DateTime? startDate,
      DateTime? endDate,
      List<ProgramTimelineModel?>? timeline,
      int? going,
      int? like});
}

/// @nodoc
class __$NoticeModelCopyWithImpl<$Res> extends _$NoticeModelCopyWithImpl<$Res>
    implements _$NoticeModelCopyWith<$Res> {
  __$NoticeModelCopyWithImpl(
      _NoticeModel _value, $Res Function(_NoticeModel) _then)
      : super(_value, (v) => _then(v as _NoticeModel));

  @override
  _NoticeModel get _value => super._value as _NoticeModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? published = freezed,
    Object? title = freezed,
    Object? label = freezed,
    Object? descriptions = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? timeline = freezed,
    Object? going = freezed,
    Object? like = freezed,
  }) {
    return _then(_NoticeModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      published: published == freezed
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptions: descriptions == freezed
          ? _value.descriptions
          : descriptions // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timeline: timeline == freezed
          ? _value.timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as List<ProgramTimelineModel?>?,
      going: going == freezed
          ? _value.going
          : going // ignore: cast_nullable_to_non_nullable
              as int?,
      like: like == freezed
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NoticeModel implements _NoticeModel {
  const _$_NoticeModel(
      {this.id,
      this.published,
      this.title,
      this.label,
      this.descriptions,
      this.startDate,
      this.endDate,
      this.timeline,
      this.going,
      this.like});

  factory _$_NoticeModel.fromJson(Map<String, dynamic> json) =>
      _$_$_NoticeModelFromJson(json);

  @override
  final String? id;
  @override
  final DateTime? published;
  @override
  final String? title;
  @override

  /// **label** can be a value "event" or "activity"
  final String? label;
  @override
  final String? descriptions;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final List<ProgramTimelineModel?>? timeline;
  @override
  final int? going;
  @override
  final int? like;

  @override
  String toString() {
    return 'NoticeModel(id: $id, published: $published, title: $title, label: $label, descriptions: $descriptions, startDate: $startDate, endDate: $endDate, timeline: $timeline, going: $going, like: $like)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NoticeModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.published, published) ||
                const DeepCollectionEquality()
                    .equals(other.published, published)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.descriptions, descriptions) ||
                const DeepCollectionEquality()
                    .equals(other.descriptions, descriptions)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.timeline, timeline) ||
                const DeepCollectionEquality()
                    .equals(other.timeline, timeline)) &&
            (identical(other.going, going) ||
                const DeepCollectionEquality().equals(other.going, going)) &&
            (identical(other.like, like) ||
                const DeepCollectionEquality().equals(other.like, like)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(published) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(descriptions) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(timeline) ^
      const DeepCollectionEquality().hash(going) ^
      const DeepCollectionEquality().hash(like);

  @JsonKey(ignore: true)
  @override
  _$NoticeModelCopyWith<_NoticeModel> get copyWith =>
      __$NoticeModelCopyWithImpl<_NoticeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NoticeModelToJson(this);
  }
}

abstract class _NoticeModel implements NoticeModel {
  const factory _NoticeModel(
      {String? id,
      DateTime? published,
      String? title,
      String? label,
      String? descriptions,
      DateTime? startDate,
      DateTime? endDate,
      List<ProgramTimelineModel?>? timeline,
      int? going,
      int? like}) = _$_NoticeModel;

  factory _NoticeModel.fromJson(Map<String, dynamic> json) =
      _$_NoticeModel.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  DateTime? get published => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override

  /// **label** can be a value "event" or "activity"
  String? get label => throw _privateConstructorUsedError;
  @override
  String? get descriptions => throw _privateConstructorUsedError;
  @override
  DateTime? get startDate => throw _privateConstructorUsedError;
  @override
  DateTime? get endDate => throw _privateConstructorUsedError;
  @override
  List<ProgramTimelineModel?>? get timeline =>
      throw _privateConstructorUsedError;
  @override
  int? get going => throw _privateConstructorUsedError;
  @override
  int? get like => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NoticeModelCopyWith<_NoticeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ProgramTimelineModel _$ProgramTimelineModelFromJson(Map<String, dynamic> json) {
  return _ProgramTimelineModel.fromJson(json);
}

/// @nodoc
class _$ProgramTimelineModelTearOff {
  const _$ProgramTimelineModelTearOff();

  _ProgramTimelineModel call(
      {String? title, String? description, DateTime? time}) {
    return _ProgramTimelineModel(
      title: title,
      description: description,
      time: time,
    );
  }

  ProgramTimelineModel fromJson(Map<String, Object> json) {
    return ProgramTimelineModel.fromJson(json);
  }
}

/// @nodoc
const $ProgramTimelineModel = _$ProgramTimelineModelTearOff();

/// @nodoc
mixin _$ProgramTimelineModel {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgramTimelineModelCopyWith<ProgramTimelineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramTimelineModelCopyWith<$Res> {
  factory $ProgramTimelineModelCopyWith(ProgramTimelineModel value,
          $Res Function(ProgramTimelineModel) then) =
      _$ProgramTimelineModelCopyWithImpl<$Res>;
  $Res call({String? title, String? description, DateTime? time});
}

/// @nodoc
class _$ProgramTimelineModelCopyWithImpl<$Res>
    implements $ProgramTimelineModelCopyWith<$Res> {
  _$ProgramTimelineModelCopyWithImpl(this._value, this._then);

  final ProgramTimelineModel _value;
  // ignore: unused_field
  final $Res Function(ProgramTimelineModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$ProgramTimelineModelCopyWith<$Res>
    implements $ProgramTimelineModelCopyWith<$Res> {
  factory _$ProgramTimelineModelCopyWith(_ProgramTimelineModel value,
          $Res Function(_ProgramTimelineModel) then) =
      __$ProgramTimelineModelCopyWithImpl<$Res>;
  @override
  $Res call({String? title, String? description, DateTime? time});
}

/// @nodoc
class __$ProgramTimelineModelCopyWithImpl<$Res>
    extends _$ProgramTimelineModelCopyWithImpl<$Res>
    implements _$ProgramTimelineModelCopyWith<$Res> {
  __$ProgramTimelineModelCopyWithImpl(
      _ProgramTimelineModel _value, $Res Function(_ProgramTimelineModel) _then)
      : super(_value, (v) => _then(v as _ProgramTimelineModel));

  @override
  _ProgramTimelineModel get _value => super._value as _ProgramTimelineModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? time = freezed,
  }) {
    return _then(_ProgramTimelineModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProgramTimelineModel implements _ProgramTimelineModel {
  const _$_ProgramTimelineModel({this.title, this.description, this.time});

  factory _$_ProgramTimelineModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ProgramTimelineModelFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final DateTime? time;

  @override
  String toString() {
    return 'ProgramTimelineModel(title: $title, description: $description, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProgramTimelineModel &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(time);

  @JsonKey(ignore: true)
  @override
  _$ProgramTimelineModelCopyWith<_ProgramTimelineModel> get copyWith =>
      __$ProgramTimelineModelCopyWithImpl<_ProgramTimelineModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProgramTimelineModelToJson(this);
  }
}

abstract class _ProgramTimelineModel implements ProgramTimelineModel {
  const factory _ProgramTimelineModel(
      {String? title,
      String? description,
      DateTime? time}) = _$_ProgramTimelineModel;

  factory _ProgramTimelineModel.fromJson(Map<String, dynamic> json) =
      _$_ProgramTimelineModel.fromJson;

  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  DateTime? get time => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProgramTimelineModelCopyWith<_ProgramTimelineModel> get copyWith =>
      throw _privateConstructorUsedError;
}
