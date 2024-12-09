import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/post_detail_response_model.dart';


class PostDetailMeetLocation extends ConsumerWidget {
  final MeetLocation meetLocation;

  const PostDetailMeetLocation(this.meetLocation, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    final Completer<NaverMapController> mapControllerCompleter = Completer();
    final meetLocationLatLng =
        NLatLng(meetLocation.latitude, meetLocation.longitude);

    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 6),
            child: Text(
              "만남 희망 장소",
              style:
                  textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                meetLocation.shortAddress != null
                    ? Text(
                        meetLocation.shortAddress!,
                        style: textTheme.bodyMedium!.copyWith(),
                      )
                    : SizedBox(),
                Text(
                  meetLocation.address,
                  style: textTheme.bodyMedium!.copyWith(
                    color: Color(0xff9b9b9b),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            child: NaverMap(
              options: NaverMapViewOptions(
                  locationButtonEnable: false,
                  indoorEnable: true,
                  // 실내 맵 사용 가능 여부 설정
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
          ),
        ],
      ),
    );
  }
}
