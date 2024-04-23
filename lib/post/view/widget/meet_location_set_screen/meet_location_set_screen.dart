import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:together_delivery_app/helper/apiUrls.dart';
import 'package:together_delivery_app/post/view/widget/meet_location_set_screen/model/reverse_geocoding_response.dart';

class MeetLocationSetScreen extends StatelessWidget {
  const MeetLocationSetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Completer<NaverMapController> mapControllerCompleter = Completer();
    late NaverMapController controller;
    const latLng1 = NLatLng(37.5666, 126.979);
    final marker1 = NMarker(id: '1', position: latLng1);

    return NaverMap(
      options: const NaverMapViewOptions(
        indoorEnable: true, // 실내 맵 사용 가능 여부 설정
        locationButtonEnable: true, // 위치 버튼 표시 여부 설정
        consumeSymbolTapEvents: false, // 심볼 탭 이벤트 소비 여부 설정
      ),
      onMapReady: (_controller) async {
        // 지도 준비 완료 시 호출되는 콜백 함수
        controller = _controller;
        controller.addOverlay(marker1);
        mapControllerCompleter
            .complete(controller); // Completer에 지도 컨트롤러 완료 신호 전송
      },
      onMapTapped: (point, latLng) async {
        print("${latLng.longitude.toString()},${latLng.latitude.toString()}");
        final dio = Dio();
        final response = await dio.get(
            apiUrls.reverseGeocoding +
                "?coords=${latLng.longitude.toString()},${latLng.latitude.toString()}&orders=roadaddr&output=json",
            options: Options(headers: {
              'X-NCP-APIGW-API-KEY-ID':dotenv.env['NAVER_APPLICATION_CLIENT_ID'],
              'X-NCP-APIGW-API-KEY':dotenv.env['NAVER_APPLICATION_CLIENT_SECRET']
            }));
        ReverseGeocodingResponse reverseGeocodingResponse = ReverseGeocodingResponse.fromJson(response.data);
        final marker = NMarker(id: '1', position: latLng);
        controller.addOverlay(marker);

        final onMarkerInfoWindow = NInfoWindow.onMarker(id: "1", text: getRoadAddr(reverseGeocodingResponse));
        marker.openInfoWindow(onMarkerInfoWindow);
      },
    );
  }
}

String getRoadAddr(ReverseGeocodingResponse reverseGeocodingResponse){
  if(reverseGeocodingResponse.results.length < 1) {
    return "";
  }

  String regionArea1Name = reverseGeocodingResponse.results[0].region.area1.name;
  String regionArea2Name = reverseGeocodingResponse.results[0].region.area2.name;
  String regionLandName = reverseGeocodingResponse.results[0].land.name;
  String regionLandNumber1 = reverseGeocodingResponse.results[0].land.number1;
  String regionLandNumber2 = reverseGeocodingResponse.results[0].land.number2;

  return "${regionArea1Name} ${regionArea2Name} ${regionLandName} ${regionLandNumber1} ${regionLandNumber2}";
}
