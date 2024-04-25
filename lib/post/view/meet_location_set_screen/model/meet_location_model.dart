import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:geolocator/geolocator.dart';

part 'meet_location_model.freezed.dart';

@freezed
class MeetLocationModel with _$MeetLocationModel {
  const factory MeetLocationModel({
    required double latitude,
    required double longitude,
    required String roadAddr,
  }) = _MeetLocationModel;
}