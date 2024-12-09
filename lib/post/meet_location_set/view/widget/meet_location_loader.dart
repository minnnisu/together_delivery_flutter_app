import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:together_delivery_app/post/meet_location_set/view/widget/meet_location_set_body.dart';
import 'package:together_delivery_app/post/meet_location_set/view_model/current_location_fetch_provider.dart';

class MeetLocationLoader extends ConsumerWidget {
  const MeetLocationLoader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(currentLocationFetchProvider).when(
      data: (data) {
        return MeetLocationSetBody(currentLocation: data.currentLocation);
      },
      error: (error, stackTrace) {
        Position currentLocation = Position(
          latitude: 37.5665, // Seoul latitude
          longitude: 126.9780, // Seoul longitude
          accuracy: 0.0,
          altitude: 0.0,
          heading: 0.0,
          speed: 0.0,
          speedAccuracy: 0.0,
          timestamp: DateTime.now(),
          altitudeAccuracy: 0.0,
          headingAccuracy: 0.0,
        );
        return MeetLocationSetBody(currentLocation: currentLocation);
      },
      loading: () =>
      const Center(
        child: CircularProgressIndicator(),
      ),
    );

  }
}


