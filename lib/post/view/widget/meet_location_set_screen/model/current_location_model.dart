import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:geolocator/geolocator.dart';

part 'current_location_model.freezed.dart';

@freezed
class CurrentLocationModel with _$CurrentLocationModel {
  const factory CurrentLocationModel({
    required Position currentLocation,
  }) = _CurrentLocationModel;
}