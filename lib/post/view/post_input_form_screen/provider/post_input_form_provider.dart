import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multi_image_picker_plus/multi_image_picker_plus.dart';
import 'package:together_delivery_app/common/const/errorCode.dart';
import 'package:together_delivery_app/common/const/restaurantCategory.dart';
import 'package:together_delivery_app/common/exception/SuccessFailure.dart';
import 'package:together_delivery_app/common/exception/customException.dart';
import 'package:together_delivery_app/post/model/meet_location_model.dart';
import 'package:together_delivery_app/post/view/post_input_form_screen/const/post_input_form_field_type.dart';
import 'package:together_delivery_app/post/view/post_input_form_screen/model/post_input_form_model.dart';
import 'package:together_delivery_app/post/view/post_input_form_screen/model/post_save_request_model.dart';
import 'package:http_parser/http_parser.dart';
import 'package:together_delivery_app/post/repository/postRepository.dart';
import 'package:together_delivery_app/post/view/post_input_form_screen/model/post_save_response_model.dart';

typedef ValidationResult = ({bool isValid, String? message});

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
            title: "",
            content: "",
            restaurantCategory: RestaurantCategory.AMERICAN_FOOD,
            restaurantName: "",
            deliveryFee: "",
            minOrderFee: "",
            address: "",
            latitude: 0.0,
            longitude: 0.0,
            images: <Asset>[],
            titleErrMsg: null,
            contentErrMsg: null,
            restaurantCategoryErrMsg: null,
            restaurantNameErrMsg: null,
            deliveryFeeErrMsg: null,
            minOrderFeeErrMsg: null,
            addressErrMsg: null,
            currentFocusedField: null,
          ),
        );

  List<RestaurantCategory> getRestaurantCategoryList() {
    return RestaurantCategory.values;
  }

  Object getFieldValue(PostInputFormFieldType type) {
    switch (type) {
      case PostInputFormFieldType.title:
        return state.title;
      case PostInputFormFieldType.content:
        return state.content;
      case PostInputFormFieldType.restaurantCategory:
        return state.restaurantCategory;
      case PostInputFormFieldType.restaurantName:
        return state.restaurantName;
      case PostInputFormFieldType.deliveryFee:
        return state.deliveryFee;
      case PostInputFormFieldType.minOrderFee:
        return state.minOrderFee;
      case PostInputFormFieldType.address:
        return state.address;
      case PostInputFormFieldType.latitude:
        return state.latitude;
      case PostInputFormFieldType.longitude:
        return state.longitude;
    }
  }

  void updateFieldValue(PostInputFormFieldType type, Object value) {
    if (type == PostInputFormFieldType.title) {
      state = state.copyWith(title: value as String);
    }
    if (type == PostInputFormFieldType.content) {
      state = state.copyWith(content: value as String);
    }
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
    if (type == PostInputFormFieldType.address) {
      state = state.copyWith(address: value as String);
    }
    if (type == PostInputFormFieldType.latitude) {
      state = state.copyWith(latitude: value as double);
    }
    if (type == PostInputFormFieldType.longitude) {
      state = state.copyWith(longitude: value as double);
    }
  }

  String? getFieldErrorValue(PostInputFormFieldType type) {
    switch (type) {
      case PostInputFormFieldType.title:
        return state.titleErrMsg;
      case PostInputFormFieldType.content:
        return state.contentErrMsg;
      case PostInputFormFieldType.restaurantCategory:
        return state.restaurantCategoryErrMsg;
      case PostInputFormFieldType.restaurantName:
        return state.restaurantNameErrMsg;
      case PostInputFormFieldType.deliveryFee:
        return state.deliveryFeeErrMsg;
      case PostInputFormFieldType.minOrderFee:
        return state.minOrderFeeErrMsg;
      case PostInputFormFieldType.address:
        return state.addressErrMsg;
      case PostInputFormFieldType.latitude:
      case PostInputFormFieldType.longitude:
        return "";
    }
  }

  void updateFieldErrorValue(PostInputFormFieldType type, String? value) {
    if (type == PostInputFormFieldType.title) {
      state = state.copyWith(titleErrMsg: value);
    }
    if (type == PostInputFormFieldType.content) {
      state = state.copyWith(contentErrMsg: value);
    }
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
    if (type == PostInputFormFieldType.address) {
      state = state.copyWith(addressErrMsg: value);
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
      ValidationResult validationResult =
          validate(state.currentFocusedField!, value);
      if (!validationResult.isValid) {
        updateFieldErrorValue(
            state.currentFocusedField!, validationResult.message!);
      } else {
        updateFieldErrorValue(state.currentFocusedField!, null);
      }
    }

    state = state.copyWith(currentFocusedField: type);
  }

  ValidationResult validate(PostInputFormFieldType type, Object value) {
    final onlyNumberRegExp = RegExp(r'^[0-9]+$');

    if (type == PostInputFormFieldType.restaurantCategory ||
        type == PostInputFormFieldType.restaurantName ||
        type == PostInputFormFieldType.latitude ||
        type == PostInputFormFieldType.longitude) {
      return (isValid: true, message: null);
    }

    if (type == PostInputFormFieldType.title) {
      String typedValue = value as String;
      if (typedValue.isEmpty) {
        return (isValid: false, message: '제목을 입력해주세요');
      }
      if (typedValue.length < 2 || typedValue.length > 20) {
        return (isValid: false, message: '제목은 2글자 이상 20글자 이하로만 입력 가능합니다.');
      }
      return (isValid: true, message: null);
    }

    if (type == PostInputFormFieldType.content) {
      String typedValue = value as String;
      if (typedValue.isEmpty) {
        return (isValid: false, message: '본문을 입력해주세요');
      }
      if (typedValue.length < 2 || typedValue.length > 100) {
        return (isValid: false, message: '제목은 2글자 이상 20글자 이하로만 입력 가능합니다.');
      }
      return (isValid: true, message: null);
    }

    if (type == PostInputFormFieldType.deliveryFee) {
      String typedValue = value as String;
      if (typedValue.isEmpty) {
        return (isValid: false, message: '배달비를 입력해주세요');
      }
      if (!onlyNumberRegExp.hasMatch(typedValue)) {
        return (
          isValid: false,
          message: '배달비는 숫자만 가능합니다.',
        );
      }

      try {
        if (int.parse(typedValue) < 0 || int.parse(typedValue) > 10000) {
          return (isValid: false, message: '배달비는 10,000원이하로만 입력이 가능합니다.');
        }
      } catch (e) {
        return (
          isValid: false,
          message: '배달비는 숫자만 가능합니다.',
        );
      }
      return (isValid: true, message: null);
    }

    if (type == PostInputFormFieldType.minOrderFee) {
      String typedValue = value as String;
      if (typedValue.isEmpty) {
        return (isValid: false, message: '최소주문금액을 입력해주세요');
      }
      if (!onlyNumberRegExp.hasMatch(typedValue)) {
        return (
          isValid: false,
          message: '최소주문금액은 숫자만 가능합니다.',
        );
      }

      try {
        if (int.parse(typedValue) < 0 || int.parse(typedValue) > 100000) {
          return (isValid: false, message: '제목은 100,000이하로만 입력 가능합니다.');
        }
      } catch (e) {
        return (
          isValid: false,
          message: '최소주문금액은 숫자만 가능합니다.',
        );
      }
      return (isValid: true, message: null);
    }

    if (type == PostInputFormFieldType.address) {
      String typedValue = value as String;
      if (typedValue.isEmpty) {
        return (isValid: false, message: '만남장소를 지정해주세요');
      }
      return (isValid: true, message: null);
    }

    return (isValid: false, message: "존재하지 않은 필드입니다.");
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
      ValidationResult validationResult =
          validate(fieldType, getFieldValue(fieldType));
      if (!validationResult.isValid) {
        updateFieldErrorValue(fieldType, validationResult.message!);
        return false;
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
      title: state.title,
      content: state.content,
      categoryCode: describeEnum(state.restaurantCategory),
      restaurantName: state.restaurantName,
      deliveryFee: int.parse(state.deliveryFee),
      minOrderFee: int.parse(state.minOrderFee),
      meetLocation: MeetLocationModel(
          address: state.address,
          latitude: state.latitude,
          longitude: state.longitude),
    );

    print("위도: ${state.latitude}, 경도:${state.longitude}");

    List<MultipartFile> images = await convertImageToFormData();
    final result =
        await postRepository.savePostDetail(postSaveRequestModel, images);
    return result;
  }
}
