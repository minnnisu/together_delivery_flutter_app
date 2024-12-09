import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:together_delivery_app/post/meet_location_set/model/meet_location_state.dart';
import 'package:together_delivery_app/post/new_post_create/view_model/new_post_create_view_model.dart';

import '../../view_model/meet_location_view_model.dart';

class MeetLocationSetBody extends StatelessWidget {
  final Position currentLocation;

  const MeetLocationSetBody({super.key, required this.currentLocation});

  @override
  Widget build(BuildContext context) {
    return MeetLocationSetNaverMap(
      currentLocation: currentLocation,
    );
  }
}

class MeetLocationSetNaverMap extends ConsumerWidget {
  final Position currentLocation;
  late Completer<NaverMapController> mapControllerCompleter;
  late NaverMapController mapController;

  MeetLocationSetNaverMap({super.key, required this.currentLocation});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<void> onMapTapped(NLatLng latLng) async {
      final marker = NMarker(id: '1', position: latLng);
      mapController.addOverlay(marker);

      final reverseGeocodingResponse = await ref
          .read(meetLocationViewModelProvider.notifier)
          .getReversesGeocoding(latLng);

      final touchedLocation = ref
          .read(meetLocationViewModelProvider.notifier)
          .getRoadAddr(reverseGeocodingResponse);

      final onMarkerInfoWindow =
          NInfoWindow.onMarker(id: "1", text: touchedLocation);
      marker.openInfoWindow(onMarkerInfoWindow);

      MeetLocationState meetLocationState = MeetLocationState(
        address: touchedLocation,
        latitude: latLng.latitude,
        longitude: latLng.longitude,
      );

      onMarkerInfoWindow.setOnTapListener(
        (overlay) {
          ref
              .read(newPostCreateViewModel.notifier)
              .changeMeetLocation(meetLocationState);
          Navigator.pop(context);
        },
      );
    }

    return NaverMap(
      options: NaverMapViewOptions(
          buildingHeight: 500,
          indoorEnable: true,
          // 실내 맵 사용 가능 여부 설정
          locationButtonEnable: true,
          // 위치 버튼 표시 여부 설정
          consumeSymbolTapEvents: false,
          // 심볼 탭 이벤트 소비 여부 설정
          initialCameraPosition: NCameraPosition(
              target:
                  NLatLng(currentLocation.latitude, currentLocation.longitude),
              zoom: 16)),
      onMapReady: (controller) {
        mapController = controller;
        mapController.setLocationTrackingMode(NLocationTrackingMode.noFollow);
        mapControllerCompleter
            .complete(controller); // Completer에 지도 컨트롤러 완료 신호 전송
      },
      onMapTapped: (point, latLng) async {
        onMapTapped(latLng);
      },
    );
  }
}
