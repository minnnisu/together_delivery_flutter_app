import 'dart:async';

import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/view/meet_location_set_screen/model/meet_location_model.dart';

import '../model/reverse_geocoding_response.dart';
import 'meet_location_repository.dart';

final meetLocationProvider =
    StateNotifierProvider.autoDispose<MeetLocationNotifier, MeetLocationModel>((ref) {
  final meetLocationSetRepository =
      ref.watch(meetLocationSetRepositoryProvider);

  return MeetLocationNotifier(
    meetLocationSetRepository: meetLocationSetRepository,
  );
});

class MeetLocationNotifier extends StateNotifier<MeetLocationModel> {
  final MeetLocationSetRepository meetLocationSetRepository;
  final Completer<NaverMapController> mapControllerCompleter = Completer();
  late NaverMapController controller;

  MeetLocationNotifier({required this.meetLocationSetRepository})
      : super(MeetLocationModel(
          latitude: 0,
          longitude: 0,
          roadAddr: "",
        ));

  void onMapReady(NaverMapController _controller) async {
    controller = _controller;
    controller.setLocationTrackingMode(NLocationTrackingMode.noFollow);
    mapControllerCompleter.complete(controller); // Completer에 지도 컨트롤러 완료 신호 전송
  }

  Future<NInfoWindow> onMapTapped(NLatLng latLng) async {
    final marker = NMarker(id: '1', position: latLng);
    controller.addOverlay(marker);

    final reverseGeocodingResponse =
        await meetLocationSetRepository.getReverseGeocoding(latLng);

    final touchedLocation = getRoadAddr(reverseGeocodingResponse);
    state = state.copyWith(roadAddr: touchedLocation);

    final onMarkerInfoWindow =
        NInfoWindow.onMarker(id: "1", text: touchedLocation);
    marker.openInfoWindow(onMarkerInfoWindow);
    return onMarkerInfoWindow;
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
