// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'events_model_fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Events _$EventsFromJson(Map<String, dynamic> json) {
  return _Events.fromJson(json);
}

/// @nodoc
class _$EventsTearOff {
  const _$EventsTearOff();

  _Events call(
      {String? id,
      DateTime? published,
      String? title,
      String? descriptions,
      DateTime? startDate,
      DateTime? endDate,
      List<DateTime?>? timeline,
      int? going,
      int? liked}) {
    return _Events(
      id: id,
      published: published,
      title: title,
      descriptions: descriptions,
      startDate: startDate,
      endDate: endDate,
      timeline: timeline,
      going: going,
      liked: liked,
    );
  }

  Events fromJson(Map<String, Object> json) {
    return Events.fromJson(json);
  }
}

/// @nodoc
const $Events = _$EventsTearOff();

/// @nodoc
mixin _$Events {
  String? get id => throw _privateConstructorUsedError;
  DateTime? get published => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get descriptions => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  List<DateTime?>? get timeline => throw _privateConstructorUsedError;
  int? get going => throw _privateConstructorUsedError;
  int? get liked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventsCopyWith<Events> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsCopyWith<$Res> {
  factory $EventsCopyWith(Events value, $Res Function(Events) then) =
      _$EventsCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      DateTime? published,
      String? title,
      String? descriptions,
      DateTime? startDate,
      DateTime? endDate,
      List<DateTime?>? timeline,
      int? going,
      int? liked});
}

/// @nodoc
class _$EventsCopyWithImpl<$Res> implements $EventsCopyWith<$Res> {
  _$EventsCopyWithImpl(this._value, this._then);

  final Events _value;
  // ignore: unused_field
  final $Res Function(Events) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? published = freezed,
    Object? title = freezed,
    Object? descriptions = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? timeline = freezed,
    Object? going = freezed,
    Object? liked = freezed,
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
              as List<DateTime?>?,
      going: going == freezed
          ? _value.going
          : going // ignore: cast_nullable_to_non_nullable
              as int?,
      liked: liked == freezed
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$EventsCopyWith<$Res> implements $EventsCopyWith<$Res> {
  factory _$EventsCopyWith(_Events value, $Res Function(_Events) then) =
      __$EventsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      DateTime? published,
      String? title,
      String? descriptions,
      DateTime? startDate,
      DateTime? endDate,
      List<DateTime?>? timeline,
      int? going,
      int? liked});
}

/// @nodoc
class __$EventsCopyWithImpl<$Res> extends _$EventsCopyWithImpl<$Res>
    implements _$EventsCopyWith<$Res> {
  __$EventsCopyWithImpl(_Events _value, $Res Function(_Events) _then)
      : super(_value, (v) => _then(v as _Events));

  @override
  _Events get _value => super._value as _Events;

  @override
  $Res call({
    Object? id = freezed,
    Object? published = freezed,
    Object? title = freezed,
    Object? descriptions = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? timeline = freezed,
    Object? going = freezed,
    Object? liked = freezed,
  }) {
    return _then(_Events(
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
              as List<DateTime?>?,
      going: going == freezed
          ? _value.going
          : going // ignore: cast_nullable_to_non_nullable
              as int?,
      liked: liked == freezed
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Events implements _Events {
  const _$_Events(
      {this.id,
      this.published,
      this.title,
      this.descriptions,
      this.startDate,
      this.endDate,
      this.timeline,
      this.going,
      this.liked});

  factory _$_Events.fromJson(Map<String, dynamic> json) =>
      _$_$_EventsFromJson(json);

  @override
  final String? id;
  @override
  final DateTime? published;
  @override
  final String? title;
  @override
  final String? descriptions;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final List<DateTime?>? timeline;
  @override
  final int? going;
  @override
  final int? liked;

  @override
  String toString() {
    return 'Events(id: $id, published: $published, title: $title, descriptions: $descriptions, startDate: $startDate, endDate: $endDate, timeline: $timeline, going: $going, liked: $liked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Events &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.published, published) ||
                const DeepCollectionEquality()
                    .equals(other.published, published)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
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
            (identical(other.liked, liked) ||
                const DeepCollectionEquality().equals(other.liked, liked)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(published) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(descriptions) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(timeline) ^
      const DeepCollectionEquality().hash(going) ^
      const DeepCollectionEquality().hash(liked);

  @JsonKey(ignore: true)
  @override
  _$EventsCopyWith<_Events> get copyWith =>
      __$EventsCopyWithImpl<_Events>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EventsToJson(this);
  }
}

abstract class _Events implements Events {
  const factory _Events(
      {String? id,
      DateTime? published,
      String? title,
      String? descriptions,
      DateTime? startDate,
      DateTime? endDate,
      List<DateTime?>? timeline,
      int? going,
      int? liked}) = _$_Events;

  factory _Events.fromJson(Map<String, dynamic> json) = _$_Events.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  DateTime? get published => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get descriptions => throw _privateConstructorUsedError;
  @override
  DateTime? get startDate => throw _privateConstructorUsedError;
  @override
  DateTime? get endDate => throw _privateConstructorUsedError;
  @override
  List<DateTime?>? get timeline => throw _privateConstructorUsedError;
  @override
  int? get going => throw _privateConstructorUsedError;
  @override
  int? get liked => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EventsCopyWith<_Events> get copyWith => throw _privateConstructorUsedError;
}
