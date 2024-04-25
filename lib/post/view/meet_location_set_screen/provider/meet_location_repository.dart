import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/helper/apiUrls.dart';
import 'package:together_delivery_app/post/view/meet_location_set_screen/model/reverse_geocoding_response.dart';
import 'package:together_delivery_app/providers/dioProvider.dart';

final meetLocationSetRepositoryProvider = Provider<MeetLocationSetRepository>((ref) {
  final dio = ref.watch(dioProvider);

  return MeetLocationSetRepository(
    dio:dio,
  );
});

class MeetLocationSetRepository {
  final Dio dio;

  MeetLocationSetRepository({required this.dio});

  Future<ReverseGeocodingResponse> getReverseGeocoding(NLatLng latLng) async {
    final response = await dio.get(
        apiUrls.reverseGeocoding +
            "?coords=${latLng.longitude.toString()},${latLng.latitude.toString()}&orders=roadaddr&output=json",
        options: Options(headers: {
          'X-NCP-APIGW-API-KEY-ID': dotenv.env['NAVER_APPLICATION_CLIENT_ID'],
          'X-NCP-APIGW-API-KEY': dotenv.env['NAVER_APPLICATION_CLIENT_SECRET']
        }));
    return ReverseGeocodingResponse.fromJson(response.data);
  }
}
