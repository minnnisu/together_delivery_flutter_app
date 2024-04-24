import 'dart:async';

import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:together_delivery_app/post/view/widget/meet_location_set_screen/model/meet_location_set_model.dart';

import '../model/reverse_geocoding_response.dart';
import 'meet_location_set_repository.dart';

final meetLocationSetProvider =
    StateNotifierProvider<MeetLocationSetNotifier, MeetLocationSetModel>((ref) {
  final meetLocationSetRepository =
      ref.watch(meetLocationSetRepositoryProvider);

  return MeetLocationSetNotifier(
    meetLocationSetRepository: meetLocationSetRepository,
  );
});

class MeetLocationSetNotifier extends StateNotifier<MeetLocationSetModel> {
  final MeetLocationSetRepository meetLocationSetRepository;
  final Completer<NaverMapController> mapControllerCompleter = Completer();
  late NaverMapController controller;

  MeetLocationSetNotifier({required this.meetLocationSetRepository})
      : super(MeetLocationSetModel(
          latitude: 0,
          longitude: 0,
          roadAddr: "",
          currentLocation: Position(
            latitude: 37.5665,
            // Seoul latitude
            longitude: 126.9780,
            // Seoul longitude
            accuracy: 0.0,
            altitude: 0.0,
            heading: 0.0,
            speed: 0.0,
            speedAccuracy: 0.0,
            timestamp: DateTime.now(),
            altitudeAccuracy: 0.0,
            headingAccuracy: 0.0,
          ),
        ));

  void onMapReady(NaverMapController _controller) async {
    controller = _controller;
    controller.setLocationTrackingMode(NLocationTrackingMode.noFollow);
    mapControllerCompleter.complete(controller); // Completer에 지도 컨트롤러 완료 신호 전송
  }

  void onMapTapped(NLatLng latLng) async {
    final marker = NMarker(id: '1', position: latLng);
    controller.addOverlay(marker);

    final reverseGeocodingResponse =
        await meetLocationSetRepository.getReverseGeocoding(latLng);

    final onMarkerInfoWindow = NInfoWindow.onMarker(
        id: "1", text: getRoadAddr(reverseGeocodingResponse));
    marker.openInfoWindow(onMarkerInfoWindow);
  }

  String getRoadAddr(ReverseGeocodingResponse reverseGeocodingResponse) {
    if (reverseGeocodingResponse.results.length < 1) {
      return "";
    }

    String regionArea1Name =
        reverseGeocodingResponse.results[0].region.area1.name;
    String regionArea2Name =
        reverseGeocodingResponse.results[0].region.area2.name;
    String regionLandName = reverseGeocodingResponse.results[0].land.name;
    String regionLandNumber1 = reverseGeocodingResponse.results[0].land.number1;
    String regionLandNumber2 = reverseGeocodingResponse.results[0].land.number2;

    return "${regionArea1Name} ${regionArea2Name} ${regionLandName} ${regionLandNumber1} ${regionLandNumber2}";
  }
}
