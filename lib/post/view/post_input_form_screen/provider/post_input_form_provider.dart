import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multi_image_picker_plus/multi_image_picker_plus.dart';
import 'package:together_delivery_app/common/const/errorCode.dart';
import 'package:together_delivery_app/common/const/restaurantCategory.dart';
import 'package:together_delivery_app/common/exception/SuccessFailure.dart';
import 'package:together_delivery_app/common/exception/customException.dart';
import 'package:together_delivery_app/common/util/money_convertor.dart';
import 'package:together_delivery_app/common/validator/input_validation_result_model.dart';
import 'package:together_delivery_app/post/model/meet_location_model.dart';
import 'package:together_delivery_app/post/view/post_input_form_screen/const/post_input_form_field_type.dart';
import 'package:together_delivery_app/post/view/post_input_form_screen/model/post_input_form_model.dart';
import 'package:together_delivery_app/post/view/post_input_form_screen/model/post_save_request_model.dart';
import 'package:http_parser/http_parser.dart';
import 'package:together_delivery_app/post/repository/postRepository.dart';
import 'package:together_delivery_app/post/view/post_input_form_screen/model/post_save_response_model.dart';
import 'package:together_delivery_app/post/view/post_input_form_screen/post_input_validator.dart';

final postInputFormProvider = StateNotifierProvider.autoDispose<
    PostInputFormNotifier, PostInputFormModel>(
  (ref) {
    final PostRepository postRepository = ref.watch(postRepositoryProvider);

    return PostInputFormNotifier(postRepository);
  },
);

class PostInputFormNotifier extends StateNotifier<PostInputFormModel> {
  final PostRepository postRepository;

  PostInputFormNotifier(this.postRepository)
      : super(
          const PostInputFormModel(
            restaurantCategory: RestaurantCategory.AMERICAN_FOOD,
            restaurantName: "",
            deliveryFee: "",
            minOrderFee: "",
            content: "",
            meetLocation: null,
            addressDescription: "",
            images: <Asset>[],
            restaurantCategoryErrMsg: null,
            restaurantNameErrMsg: null,
            deliveryFeeErrMsg: null,
            contentErrMsg: null,
            minOrderFeeErrMsg: null,
            meetLocationErrMsg: null,
            addressDescriptionErrMsg: null,
            currentFocusedField: null,
          ),
        );

  List<RestaurantCategory> getRestaurantCategoryList() {
    return RestaurantCategory.values;
  }

  Object? getFieldValue(PostInputFormFieldType type) {
    switch (type) {
      case PostInputFormFieldType.restaurantCategory:
        return state.restaurantCategory;

      case PostInputFormFieldType.restaurantName:
        return state.restaurantName;

      case PostInputFormFieldType.deliveryFee:
        return state.deliveryFee;

      case PostInputFormFieldType.minOrderFee:
        return state.minOrderFee;

      case PostInputFormFieldType.content:
        return state.content;

      case PostInputFormFieldType.meetLocation:
        return state.meetLocation;

      case PostInputFormFieldType.addressDescription:
        return state.addressDescription;
    }
  }

  void updateFieldValue(PostInputFormFieldType type, Object? value) {
    if (type == PostInputFormFieldType.restaurantCategory) {
      state = state.copyWith(restaurantCategory: value as RestaurantCategory);
    }
    if (type == PostInputFormFieldType.restaurantName) {
      state = state.copyWith(restaurantName: value as String);
    }
    if (type == PostInputFormFieldType.deliveryFee) {
      state = state.copyWith(deliveryFee: value as String);
    }
    if (type == PostInputFormFieldType.minOrderFee) {
      state = state.copyWith(minOrderFee: value as String);
    }
    if (type == PostInputFormFieldType.minOrderFee) {
      state = state.copyWith(minOrderFee: value as String);
    }
    if (type == PostInputFormFieldType.content) {
      state = state.copyWith(content: value as String);
    }
    if (type == PostInputFormFieldType.meetLocation) {
      state = state.copyWith(meetLocation: value as MeetLocationModel?);
    }
    if (type == PostInputFormFieldType.addressDescription) {
      state = state.copyWith(addressDescription: value as String);
    }
  }

  Object? getFieldErrorValue(PostInputFormFieldType type) {
    switch (type) {
      case PostInputFormFieldType.restaurantCategory:
        return state.restaurantCategoryErrMsg;

      case PostInputFormFieldType.restaurantName:
        return state.restaurantNameErrMsg;

      case PostInputFormFieldType.deliveryFee:
        return state.deliveryFeeErrMsg;

      case PostInputFormFieldType.minOrderFee:
        return state.minOrderFeeErrMsg;

      case PostInputFormFieldType.content:
        return state.contentErrMsg;

      case PostInputFormFieldType.meetLocation:
        return state.meetLocationErrMsg;

      case PostInputFormFieldType.addressDescription:
        return state.addressDescriptionErrMsg;
    }
  }

  void updateFieldErrorValue(PostInputFormFieldType type, String? value) {
    if (type == PostInputFormFieldType.restaurantCategory) {
      state = state.copyWith(restaurantCategoryErrMsg: value);
    }
    if (type == PostInputFormFieldType.restaurantName) {
      state = state.copyWith(restaurantNameErrMsg: value);
    }
    if (type == PostInputFormFieldType.deliveryFee) {
      state = state.copyWith(deliveryFeeErrMsg: value);
    }
    if (type == PostInputFormFieldType.minOrderFee) {
      state = state.copyWith(minOrderFeeErrMsg: value);
    }
    if (type == PostInputFormFieldType.content) {
      state = state.copyWith(contentErrMsg: value);
    }
    if (type == PostInputFormFieldType.meetLocation) {
      state = state.copyWith(meetLocationErrMsg: value);
    }
    if (type == PostInputFormFieldType.addressDescription) {
      state = state.copyWith(addressDescriptionErrMsg: value);
    }
  }

  void checkFocusedFieldChange(PostInputFormFieldType type) {
    if (state.currentFocusedField == null) {
      state = state.copyWith(currentFocusedField: type);
      return;
    }

    if (state.currentFocusedField ==
        PostInputFormFieldType.restaurantCategory) {
      state = state.copyWith(currentFocusedField: type);
      return;
    }

    String value = getFieldValue(state.currentFocusedField!) as String;

    if (value.isEmpty) {
      state = state.copyWith(currentFocusedField: type);
      return;
    }

    if (state.currentFocusedField != type) {
      InputValidationResultModel validationResult =
          PostInputValidator().validate(state.currentFocusedField!, value);
      if (!validationResult.isValid) {
        updateFieldErrorValue(
            state.currentFocusedField!, validationResult.message!);
      } else {
        updateFieldErrorValue(state.currentFocusedField!, null);
      }
    }

    state = state.copyWith(currentFocusedField: type);
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

  bool checkAllFieldValid() {
    for (var fieldType in PostInputFormFieldType.values) {
      InputValidationResultModel validationResult =
          PostInputValidator().validate(fieldType, getFieldValue(fieldType));
      if (!validationResult.isValid) {
        updateFieldErrorValue(fieldType, validationResult.message!);
        return false;
      } else {
        updateFieldErrorValue(state.currentFocusedField!, null);
      }
    }

    return true;
  }

  Future<List<MultipartFile>> convertImageToFormData() async {
    List<MultipartFile> images = [];

    for (int i = 0; i < state.images.length; i++) {
      // 각 이미지를 바이트 배열로 읽어오기
      ByteData byteData = await state.images[i].getByteData();
      List<int> imageData = byteData.buffer.asUint8List();

      images.add(MultipartFile.fromBytes(imageData,
          filename: 'image$i.jpg', contentType: MediaType('image', 'jpeg')));
    }

    return images;
  }

  Future<Result<PostSaveResponseModel, Exception>> registerPost() async {
    if (!checkAllFieldValid()) {
      return Failure(
          CustomException(errorCode: ErrorCode.NOT_VALID_INPUT_FORM_ERROR));
    }

    PostSaveRequestModel postSaveRequestModel = PostSaveRequestModel(
      categoryCode: state.restaurantCategory.name,
      restaurantName: state.restaurantName,
      minOrderFee: int.parse(MoneyConvertor.removeCommasFromNumber(state.minOrderFee)),
      deliveryFee: int.parse(MoneyConvertor.removeCommasFromNumber(state.deliveryFee)),
      meetLocation: MeetLocationModel(
        address: state.meetLocation!.address,
        shortAddress: state.addressDescription,
        latitude: state.meetLocation!.latitude,
        longitude: state.meetLocation!.longitude,
      ),
      content: state.content != "" ? state.content : null,
    );

    List<MultipartFile> images = await convertImageToFormData();
    final result =
        await postRepository.savePostDetail(postSaveRequestModel, images);
    return result;
  }
}
