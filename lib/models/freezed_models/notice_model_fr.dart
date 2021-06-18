// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'notice_model_fr.freezed.dart';
// part 'notice_model_fr.g.dart';

// /// Data Model for Events and Activities
// /// Updated from Events to NoticeModel
// @freezed
// abstract class NoticeModel with _$NoticeModel {
//   const factory NoticeModel({
//     String? id,
//     DateTime? published,
//     String? title,
//     /// **label** can be a value "event" or "activity"
//     String? label, 
//     String? descriptions,
//     DateTime? startDate,
//     DateTime? endDate,
//     List<ProgramTimelineModel?>? timeline,
//     int? going,
//     int? like,
//   }) = _NoticeModel;

//   factory NoticeModel.fromJson(Map<String, dynamic> json) => _$NoticeModelFromJson(json);
// }

// /// Data Model for Program Timeline in an event or in an activity
// @freezed
// abstract class ProgramTimelineModel with _$ProgramTimelineModel {
//   const factory ProgramTimelineModel({
//     String? title,
//     String? description,
//     DateTime? time,
//   }) = _ProgramTimelineModel;

//   factory ProgramTimelineModel.fromJson(Map<String, dynamic> json) =>
//       _$ProgramTimelineModelFromJson(json);
// }
