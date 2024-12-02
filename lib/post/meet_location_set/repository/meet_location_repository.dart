import 'package:flutter_naver_map/flutter_naver_map.dart';

import '../model/reverse_geocoding_response_model.dart';

abstract class MeetLocationRepository {
  Future<ReverseGeocodingResponseModel> getReverseGeocoding(NLatLng latLng);
}
