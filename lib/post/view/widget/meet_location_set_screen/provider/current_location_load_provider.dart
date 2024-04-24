import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:together_delivery_app/post/view/widget/meet_location_set_screen/model/current_location_model.dart';

final currentLocationLoadProvider = FutureProvider<CurrentLocationModel>((ref) async {

  final currentLocation = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  final currentLocationModel = CurrentLocationModel(currentLocation: currentLocation);
  return currentLocationModel;
});