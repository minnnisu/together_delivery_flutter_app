import 'dart:async';

import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/meet_location_set/model/meet_location_state.dart';
import 'package:together_delivery_app/post/meet_location_set/model/reverse_geocoding_response_model.dart';
import 'package:together_delivery_app/post/meet_location_set/repository/meet_location_repository.dart';

import '../repository/meet_location_repository_impl.dart';

typedef InfoWindowInfo = ({
  NInfoWindow InfoWindowInfo,
  MeetLocationState meetLocation,
});

final meetLocationViewModelProvider = AutoDisposeStateNotifierProvider<MeetLocationViewModel, MeetLocationState>((ref) {
  MeetLocationRepository meetLocationRepository = ref.watch(meetLocationRepositoryProvider);
  

  return MeetLocationViewModel(
      MeetLocationState.init(), meetLocationRepository);
});

class MeetLocationViewModel extends StateNotifier<MeetLocationState> {
  final MeetLocationRepository meetLocationRepository;

  MeetLocationViewModel(
      super.state, this.meetLocationRepository);

  String getRoadAddr(
      ReverseGeocodingResponseModel reverseGeocodingResponseModel) {
    if (reverseGeocodingResponseModel.results.isEmpty) {
      return "위치정보를 가져올 수 없습니다.";
    }

    print(reverseGeocodingResponseModel.toJson());

    String regionArea1Name =
        reverseGeocodingResponseModel.results[0].region.area1.name;
    String regionArea2Name =
        reverseGeocodingResponseModel.results[0].region.area2.name;
    String? regionLandName =
        reverseGeocodingResponseModel.results[0].land?.name;
    String? regionLandNumber1 =
        reverseGeocodingResponseModel.results[0].land?.number1;
    String? regionLandNumber2 =
        reverseGeocodingResponseModel.results[0].land?.number2;

    return "${regionArea1Name} ${regionArea2Name} ${regionLandName} ${regionLandNumber1} ${regionLandNumber2}";
  }

  Future<ReverseGeocodingResponseModel> getReversesGeocoding(NLatLng latLng) async {
    return await meetLocationRepository.getReverseGeocoding(latLng);
  }
}
