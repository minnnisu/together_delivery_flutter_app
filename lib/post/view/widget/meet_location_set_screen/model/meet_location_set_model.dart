import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'meet_location_set_model.freezed.dart';
part 'meet_location_set_model.g.dart';

MeetLocationSetModel meetLocationSetModelFromJson(String str) => MeetLocationSetModel.fromJson(json.decode(str));

String meetLocationSetModelToJson(MeetLocationSetModel data) => json.encode(data.toJson());

@freezed
class MeetLocationSetModel with _$MeetLocationSetModel {
  const factory MeetLocationSetModel({
    required double latitude,
    required double longitude,
    required String roadAddr,
  }) = _MeetLocationSetModel;

  factory MeetLocationSetModel.fromJson(Map<String, dynamic> json) => _$MeetLocationSetModelFromJson(json);
}