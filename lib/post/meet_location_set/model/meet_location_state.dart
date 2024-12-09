import 'dart:convert';

class MeetLocationState {
  String address;
  double latitude;
  double longitude;

  MeetLocationState({
    required this.address,
    required this.latitude,
    required this.longitude,
  });

  MeetLocationState copyWith({
    String? address,
    double? latitude,
    double? longitude,
  }) =>
      MeetLocationState(
        address: address ?? this.address,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
      );

  MeetLocationState.init()
      : address = "",
        latitude = 0.0,
        longitude = 0.0;
}
