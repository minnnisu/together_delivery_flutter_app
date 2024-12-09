import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http_parser/http_parser.dart';
import 'package:multi_image_picker_plus/multi_image_picker_plus.dart';
import 'package:together_delivery_app/auth/const/post_field_type.dart';
import 'package:together_delivery_app/common/const/restaurantCategory.dart';
import 'package:together_delivery_app/common/exception/post_input_exception.dart';
import 'package:together_delivery_app/post/meet_location_set/model/meet_location_state.dart';
import 'package:together_delivery_app/post/new_post_create/model/post_create_request_model.dart' as pcrm;
import 'package:together_delivery_app/post/new_post_create/model/post_create_response_model.dart';
import 'package:together_delivery_app/post/new_post_create/model/post_create_state.dart';
import 'package:together_delivery_app/post/new_post_create/repository/post_create_repository.dart';
import 'package:together_delivery_app/post/new_post_create/repository/post_create_repository_impl.dart';

final newPostCreateViewModel =
    AutoDisposeStateNotifierProvider<NewPostCreateViewModel, PostCreateState>(
        (ref) {
          PostCreateRepository postCreateRepository = ref.watch(postCreateRepositoryProvider);
  return NewPostCreateViewModel(PostCreateState.init(), postCreateRepository);
});

class NewPostCreateViewModel extends StateNotifier<PostCreateState> {
  final PostCreateRepository postCreateRepository;
  NewPostCreateViewModel(super.state, this.postCreateRepository);

  void onChangeRestaurantCategory(RestaurantCategory restaurantCategory) {
    state = state.copyWith(restaurant: restaurantCategory);
  }

  void onChangeMinOrderFee(String minOrderFee) {
    try {
      _validateMinOrderFee(minOrderFee);
      _changeInput(PostFieldType.minOrderFee, minOrderFee, true, "");
    } on PostInputException catch (e) {
      _changeInput(
          PostFieldType.minOrderFee, minOrderFee, false, e.errorMessage);
    }
  }

  void onChangeDeliverFee(String deliveryFee) {
    try {
      _validateDeliveryFee(deliveryFee);
      _changeInput(PostFieldType.deliveryFee, deliveryFee, true, "");
    } on PostInputException catch (e) {
      _changeInput(
          PostFieldType.deliveryFee, deliveryFee, false, e.errorMessage);
    }
  }

  void onChangeRestaurantName(String restaurantName) {
    try {
      _validateRestaurantName(restaurantName);
      _changeInput(PostFieldType.restaurantName, restaurantName, true, "");
    } on PostInputException catch (e) {
      _changeInput(
          PostFieldType.restaurantName, restaurantName, false, e.errorMessage);
    }
  }

  void onChangeShortAddress(String shortAddress) {
    try {
      _validateShortAddress(shortAddress);
      _changeInput(PostFieldType.shortAddress, shortAddress, true, "");
    } on PostInputException catch (e) {
      _changeInput(
          PostFieldType.shortAddress, shortAddress, false, e.errorMessage);
    }
  }

  void onChangeContent(String content) {
    try {
      _validateContent(content);
      _changeInput(PostFieldType.content, content, true, "");
    } on PostInputException catch (e) {
      _changeInput(PostFieldType.content, content, false, e.errorMessage);
    }
  }

  void removeMeetLocation() {
    state = state.copyWith(
      meetLocation: state.meetLocation.copyWith(
        value: null,
        isValid: false,
        stateMessage: "",
      ),
    );
  }

  void changeMeetLocation(MeetLocationState meetLocationState) {
    var newMeetLocation = PostMeetLocationInput(
      value: PostMeetLocation(
        address: meetLocationState.address,
        latitude: meetLocationState.latitude,
        longitude: meetLocationState.longitude,
      ),
      isValid: true,
      stateMessage: '',
    );

    state = state.copyWith(
      meetLocation: newMeetLocation,
    );
  }

  void _validateMinOrderFee(String minOrderFee) {
    final onlyNumberRegExp = RegExp(r'^[0-9]+$');

    if (minOrderFee.isEmpty) {
      throw PostInputException(PostFieldType.minOrderFee, '최소주문금액을 입력해주세요');
    }

    if (!onlyNumberRegExp.hasMatch(minOrderFee)) {
      throw PostInputException(PostFieldType.minOrderFee, '숫자만 입력가능합니다.');
    }

    if (int.parse(minOrderFee) < 0 || int.parse(minOrderFee) > 100000) {
      throw PostInputException(
          PostFieldType.minOrderFee, '최소주문금액은 100,000원 이하로만 입력 가능합니다.');
    }
  }

  void _validateDeliveryFee(String deliveryFee) {
    final onlyNumberRegExp = RegExp(r'^[0-9]+$');

    if (deliveryFee.isEmpty) {
      throw PostInputException(PostFieldType.deliveryFee, '배달비를 입력해주세요');
    }

    if (!onlyNumberRegExp.hasMatch(deliveryFee)) {
      throw PostInputException(PostFieldType.deliveryFee, '숫자만 입력가능합니다.');
    }

    if (int.parse(deliveryFee) < 0 || int.parse(deliveryFee) > 10000) {
      throw PostInputException(
          PostFieldType.deliveryFee, '배달비는 10,000원 이하로만 입력이 가능합니다.');
    }
  }

  void _validateRestaurantName(String restaurantName) {
    if (restaurantName.isEmpty) {
      throw PostInputException(PostFieldType.restaurantName, '가게이름을 입력해주세요');
    }
    if (restaurantName.length < 2 || restaurantName.length > 20) {
      throw PostInputException(
          PostFieldType.restaurantName, '가게이름은 2글자 이상 20글자 이하로만 입력 가능합니다.');
    }
  }

  void _validateShortAddress(String shortAddress) {
    if (shortAddress.isEmpty) {
      throw PostInputException(PostFieldType.shortAddress, '위치 설명을 입력해주세요');
    }
    if (shortAddress.length < 2 || shortAddress.length > 20) {
      throw PostInputException(
          PostFieldType.restaurantName, '위치 설명은 2글자 이상 20글자 이하로만 입력 가능합니다.');
    }
  }

  void _validateContent(String content) {
    if (content.isEmpty) {
      return;
    }

    if (content.length < 2 || content.length > 100) {
      throw PostInputException(
          PostFieldType.restaurantName, '설명 내용은 2글자 이상 100글자 이하로만 입력 가능합니다.');
    }
  }

  void _validateMeetLocation() {
    if (state.meetLocation.isValid == false) {
      throw PostInputException(PostFieldType.meetLocation, "만남장소를 설정해주세요.");
    }
  }

  void _changeInput(PostFieldType postFieldType, dynamic value, bool isValid,
      String stateMessage) {
    if (postFieldType == PostFieldType.restaurantName) {
      state = state.copyWith(
        restaurantName: state.restaurantName.copyWith(
            value: value, isValid: isValid, stateMessage: stateMessage),
      );
    }

    if (postFieldType == PostFieldType.minOrderFee) {
      state = state.copyWith(
        minOrderFee: state.minOrderFee.copyWith(
            value: value, isValid: isValid, stateMessage: stateMessage),
      );
    }

    if (postFieldType == PostFieldType.deliveryFee) {
      state = state.copyWith(
        deliveryFee: state.deliveryFee.copyWith(
            value: value, isValid: isValid, stateMessage: stateMessage),
      );
    }

    if (postFieldType == PostFieldType.meetLocation) {
      state = state.copyWith(
        meetLocation: state.meetLocation.copyWith(
            value: value, isValid: isValid, stateMessage: stateMessage),
      );
    }

    if (postFieldType == PostFieldType.shortAddress) {
      state = state.copyWith(
        shortAddress: state.shortAddress.copyWith(
            value: value, isValid: isValid, stateMessage: stateMessage),
      );
    }

    if (postFieldType == PostFieldType.content) {
      state = state.copyWith(
        content: state.content.copyWith(
            value: value, isValid: isValid, stateMessage: stateMessage),
      );
    }
  }

  Future<PostCreateResponseModel> submitNewPost() async {
    final fieldMap = {
      PostFieldType.restaurantName: state.restaurantName.value,
      PostFieldType.minOrderFee: state.minOrderFee.value,
      PostFieldType.deliveryFee: state.deliveryFee.value,
      PostFieldType.meetLocation: state.meetLocation.value,
      PostFieldType.shortAddress: state.shortAddress.value,
      PostFieldType.content: state.content.value,
    };

    try {
      _validateRestaurantName(state.restaurantName.value);
      _validateMinOrderFee(state.minOrderFee.value);
      _validateDeliveryFee(state.deliveryFee.value);
      _validateMeetLocation();
      _validateShortAddress(state.shortAddress.value);
      _validateContent(state.content.value);

      var postCreateRequestModel = pcrm.PostCreateRequestModel(
          restaurantName: state.restaurantName.value,
          minOrderFee: int.parse(state.minOrderFee.value),
          deliveryFee: int.parse(state.deliveryFee.value),
          meetLocation: pcrm.MeetLocation(
              address: state.meetLocation.value!.address,
              latitude: state.meetLocation.value!.latitude,
              longitude: state.meetLocation.value!.longitude,
              shortAddress: state.shortAddress.value),
          categoryCode: state.restaurant.name,
          content: state.content.value != "" ? state.content.value : null);

      List<MultipartFile> images = await _convertImageToFormData();

      Map<String, Object> formDataObject = {};
      if (images.isNotEmpty) {
        formDataObject = {
          'post': MultipartFile.fromString(
              jsonEncode(postCreateRequestModel.toJson()),
              contentType: Headers.jsonMimeType),
          'files': images,
        };
      } else {
        formDataObject = {
          'post': MultipartFile.fromString(
              jsonEncode(postCreateRequestModel.toJson()),
              contentType: Headers.jsonMimeType),
        };
      }

      FormData formData = FormData.fromMap(formDataObject);
      var createNewPost = postCreateRepository.createNewPost(formData);
      return createNewPost;

    } on PostInputException catch (e) {
      _changeInput(
          e.postFieldType, fieldMap[e.postFieldType], false, e.errorMessage);
      rethrow;
    }
  }

  Future<List<MultipartFile>> _convertImageToFormData() async {
    List<MultipartFile> images = [];

    for (int i = 0; i < state.images.length; i++) {
      // 각 이미지를 바이트 배열로 읽어오기
      var byteData = await state.images[i].getByteData();
      List<int> imageData = byteData.buffer.asUint8List();

      images.add(MultipartFile.fromBytes(imageData,
          filename: 'image$i.jpg', contentType: MediaType('image', 'jpeg')));
    }

    return images;
  }

  Future<void> loadAssets(BuildContext context) async {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    List<Asset> resultList = <Asset>[];

    const AlbumSetting albumSetting = AlbumSetting(
      fetchResults: {
        PHFetchResult(
          type: PHAssetCollectionType.smartAlbum,
          subtype: PHAssetCollectionSubtype.smartAlbumUserLibrary,
        ),
        PHFetchResult(
          type: PHAssetCollectionType.smartAlbum,
          subtype: PHAssetCollectionSubtype.smartAlbumFavorites,
        ),
        PHFetchResult(
          type: PHAssetCollectionType.album,
          subtype: PHAssetCollectionSubtype.albumRegular,
        ),
        PHFetchResult(
          type: PHAssetCollectionType.smartAlbum,
          subtype: PHAssetCollectionSubtype.smartAlbumSelfPortraits,
        ),
        PHFetchResult(
          type: PHAssetCollectionType.smartAlbum,
          subtype: PHAssetCollectionSubtype.smartAlbumPanoramas,
        ),
        PHFetchResult(
          type: PHAssetCollectionType.smartAlbum,
          subtype: PHAssetCollectionSubtype.smartAlbumVideos,
        ),
      },
    );
    const SelectionSetting selectionSetting = SelectionSetting(
      min: 0,
      max: 3,
      unselectOnReachingMax: true,
    );
    const DismissSetting dismissSetting = DismissSetting(
      enabled: true,
      allowSwipe: true,
    );
    final ThemeSetting themeSetting = ThemeSetting(
      backgroundColor: colorScheme.background,
      selectionFillColor: colorScheme.primary,
      selectionStrokeColor: colorScheme.onPrimary,
      previewSubtitleAttributes: const TitleAttribute(fontSize: 12.0),
      previewTitleAttributes: TitleAttribute(
        foregroundColor: colorScheme.primary,
      ),
      albumTitleAttributes: TitleAttribute(
        foregroundColor: colorScheme.primary,
      ),
    );
    const ListSetting listSetting = ListSetting(
      spacing: 5.0,
      cellsPerRow: 4,
    );
    final CupertinoSettings iosSettings = CupertinoSettings(
      fetch: const FetchSetting(album: albumSetting),
      theme: themeSetting,
      selection: selectionSetting,
      dismiss: dismissSetting,
      list: listSetting,
    );

    try {
      resultList =
          await MultiImagePicker.pickImages(selectedAssets: state.images);
    } on Exception catch (e) {
      print(e);
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    state = state.copyWith(images: resultList);
  }

  void deleteAssets(int index) {
    List<Asset> images = state.images;
    images.removeAt(index);
    state = state.copyWith(images: images);
  }
}
