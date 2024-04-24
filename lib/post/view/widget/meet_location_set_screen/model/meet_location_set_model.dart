import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:geolocator/geolocator.dart';

part 'meet_location_set_model.freezed.dart';

@freezed
class MeetLocationSetModel with _$MeetLocationSetModel {
  const factory MeetLocationSetModel({
    required double latitude,
    required double longitude,
    required String roadAddr,
    required Position currentLocation,
  }) = _MeetLocationSetModel;
}