import 'dart:convert';

import 'package:geolocator/geolocator.dart';

CurrentLocationState currentLocationStateFromJson(String str) => CurrentLocationState.fromJson(json.decode(str));

String currentLocationStateToJson(CurrentLocationState data) => json.encode(data.toJson());

class CurrentLocationState {
  Position currentLocation;

  CurrentLocationState({
    required this.currentLocation,
  });

  CurrentLocationState copyWith({
    Position? currentLocation,
  }) =>
      CurrentLocationState(
        currentLocation: currentLocation ?? this.currentLocation,
      );

  factory CurrentLocationState.fromJson(Map<String, dynamic> json) => CurrentLocationState(
    currentLocation: json["currentLocation"],
  );

  Map<String, dynamic> toJson() => {
    "currentLocation": currentLocation,
  };
}
