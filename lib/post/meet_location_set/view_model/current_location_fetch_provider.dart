import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:together_delivery_app/post/meet_location_set/model/current_location_state.dart';

final currentLocationFetchProvider = AsyncNotifierProvider<
    CurrentLocationFetch, CurrentLocationState>(
  CurrentLocationFetch.new,
);

class CurrentLocationFetch extends AsyncNotifier<CurrentLocationState> {
  @override
  Future<CurrentLocationState> build() async {
    final currentLocation = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    return CurrentLocationState(currentLocation: currentLocation);
  }
}