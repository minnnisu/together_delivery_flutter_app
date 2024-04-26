import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/model/post_detail_response_model.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/provider/post_detail_provider.dart';

class PostDetailMeetLocation extends ConsumerWidget {
  const PostDetailMeetLocation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Completer<NaverMapController> mapControllerCompleter = Completer();
    final postDetailResponseModel =
        ref.watch(postDetailProvider) as PostDetailResponseModel;
    final meetLocationLatLng = NLatLng(
        postDetailResponseModel.meetLocation.latitude,
        postDetailResponseModel.meetLocation.longitude);

    return Container(
      height: 200,
      child: NaverMap(
        options: NaverMapViewOptions(
            indoorEnable: true,
            // 실내 맵 사용 가능 여부 설정
            locationButtonEnable: true,
            // 위치 버튼 표시 여부 설정
            consumeSymbolTapEvents: false,
            // 심볼 탭 이벤트 소비 여부 설정
            initialCameraPosition:
                NCameraPosition(target: meetLocationLatLng, zoom: 16)),
        onMapReady: (controller) async {
          final marker = NMarker(
            id: '1',
            position: meetLocationLatLng,
          );
          controller.addOverlay(marker);
          mapControllerCompleter.complete(controller);
        },
      ),
    );
  }
}
