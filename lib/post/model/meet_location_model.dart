import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'meet_location_model.freezed.dart';
part 'meet_location_model.g.dart';


@freezed
class MeetLocationModel with _$MeetLocationModel {
  const factory MeetLocationModel({
    required String address,
    required double latitude,
    required double longitude,
  }) = _MeetLocationModel;

  factory MeetLocationModel.fromJson(Map<String, dynamic> json) => _$MeetLocationModelFromJson(json);
}