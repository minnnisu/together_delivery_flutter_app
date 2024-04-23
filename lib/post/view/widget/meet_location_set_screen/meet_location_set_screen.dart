
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/view/widget/meet_location_set_screen/provider/meet_location_set_notifier.dart';

class MeetLocationSetScreen extends ConsumerWidget {
  const MeetLocationSetScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final meetLocationSetRead = ref.read(meetLocationSetProvider.notifier);
    return NaverMap(
      options: const NaverMapViewOptions(
        indoorEnable: true, // 실내 맵 사용 가능 여부 설정
        locationButtonEnable: true, // 위치 버튼 표시 여부 설정
        consumeSymbolTapEvents: false, // 심볼 탭 이벤트 소비 여부 설정
      ),
      onMapReady: (controller) async {
        meetLocationSetRead.onMapReady(controller);
      },
      onMapTapped: (point, latLng) async {
        meetLocationSetRead.onMapTapped(latLng);
      },
    );
  }
}

