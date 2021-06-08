import 'package:freezed_annotation/freezed_annotation.dart';

part 'events_model_fr.freezed.dart';
part 'events_model_fr.g.dart';

@freezed
abstract class Events with _$Events {
  const factory Events({
    String? id,
    DateTime? published,
    String? title,
    String? descriptions,
    DateTime? startDate,
    DateTime? endDate,
    List<DateTime?>? timeline,
    int? going,
    int? liked,
  }) = _Events;

  factory Events.fromJson(Map<String, dynamic> json) => _$EventsFromJson(json);
}
