import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/config/api_url.dart';
import 'package:together_delivery_app/common/service/api_service.dart';
import 'package:together_delivery_app/post/meet_location_set/model/reverse_geocoding_response_model.dart';
import 'package:together_delivery_app/post/meet_location_set/repository/meet_location_repository.dart';

import '../../../common/service/network_api_service.dart';

final meetLocationRepositoryProvider = Provider<MeetLocationRepository>(
  (ref) {
    final apiService = ref.watch(networkApiServiceProvider);
    return MeetLocationProviderImpl(apiService);
  },
);

class MeetLocationProviderImpl extends MeetLocationRepository {
  final ApiService apiService;

  MeetLocationProviderImpl(this.apiService);

  @override
  Future<ReverseGeocodingResponseModel> getReverseGeocoding(
      NLatLng latLng) async {
    var response = await apiService.getGetApiResponse(
      ApiUrl.reverseGeocoding,
      queryParameters: Map.of(
        {
          "coords":
              "${latLng.longitude.toString()},${latLng.latitude.toString()}",
          "output": "json",
          "orders":"roadaddr",
        },
      ),
      headers: Map.of({
        'X-NCP-APIGW-API-KEY-ID':
            dotenv.env['NAVER_APPLICATION_CLIENT_ID'].toString(),
        'X-NCP-APIGW-API-KEY':
            dotenv.env['NAVER_APPLICATION_CLIENT_SECRET'].toString(),
      }),
    );

    return ReverseGeocodingResponseModel.fromJson(response.data);
  }
}
