import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:together_delivery_app/post/view/meet_location_set_screen/provider/current_location_load_provider.dart';
import 'package:together_delivery_app/post/view/meet_location_set_screen/provider/meet_location_provider.dart';
import 'package:together_delivery_app/post/view/post_input_form_screen/const/post_input_form_field_type.dart';
import 'package:together_delivery_app/post/view/post_input_form_screen/provider/post_input_form_provider.dart';

class MeetLocationLoader extends ConsumerWidget {
  const MeetLocationLoader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(currentLocationLoadProvider).when(
          data: (data) {
            return MeetLocation(currentLocation: data.currentLocation);
          },
          error: (error, stackTrace) {
            Position currentLocation = Position(
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
            );
            return MeetLocation(currentLocation: currentLocation);
          },
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        );
  }
}

class MeetLocation extends StatelessWidget {
  final Position currentLocation;

  const MeetLocation({super.key, required this.currentLocation});

  @override
  Widget build(BuildContext context) {
    return _NaverMap(currentLocation: currentLocation);
  }
}

class _NaverMap extends ConsumerWidget {
  final Position currentLocation;

  const _NaverMap({super.key, required this.currentLocation});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final meetLocationSetRead = ref.read(meetLocationProvider.notifier);
    final meetLocationModel = ref.watch(meetLocationProvider);

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
      onMapReady: (controller) async {
        meetLocationSetRead.onMapReady(controller);
      },
      onMapTapped: (point, latLng) async {
        NInfoWindow targetInfoWindow =
            await meetLocationSetRead.onMapTapped(latLng);
        print("만남장소: ${meetLocationModel.roadAddr}");
        targetInfoWindow.setOnTapListener(
          (overlay) {
            ref.read(postInputFormProvider.notifier).updateFieldValue(
                  PostInputFormFieldType.location,
                  meetLocationModel.roadAddr,
                );
            Navigator.pop(context);
          },
        );
      },
    );
  }
}
