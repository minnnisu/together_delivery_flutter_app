import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multi_image_picker_plus/multi_image_picker_plus.dart';

import 'package:together_delivery_app/constant/restaurantCategory.dart';
import 'package:together_delivery_app/post/const/postEditFieldType.dart';
import 'package:together_delivery_app/post/model/postEditModel.dart';

typedef ValidationResult = ({bool isValid, String? message});

final postEditProvider = StateNotifierProvider<PostEditNotifier, PostEditModel>(
  (ref) {


    return PostEditNotifier();
  },
);

class PostEditNotifier extends StateNotifier<PostEditModel> {

  PostEditNotifier()
      : super(
          PostEditModel(
            title: "",
            content: "",
            restaurantCategory: RestaurantCategory.AMERICAN_FOOD,
            restaurantName: "",
            deliveryFee: "",
            minOrderFee: "",
            location: "",
            images: <Asset>[],
            titleErrMsg: null,
            contentErrMsg: null,
            restaurantCategoryErrMsg: null,
            restaurantNameErrMsg: null,
            deliveryFeeErrMsg: null,
            minOrderFeeErrMsg: null,
            locationErrMsg: null,
            currentFocusedField: null,
          ),
        );

  List<RestaurantCategory> getRestaurantCategoryList() {
    return RestaurantCategory.values;
  }

  Object? getFieldValue(PostEditFieldType type) {
    if (type == PostEditFieldType.title) {
      return state.title;
    }
    if (type == PostEditFieldType.content) {
      return state.content;
    }
    if (type == PostEditFieldType.restaurantCategory) {
      return state.restaurantCategory;
    }
    if (type == PostEditFieldType.restaurantName) {
      return state.restaurantName;
    }
    if (type == PostEditFieldType.deliveryFee) {
      return state.deliveryFee;
    }
    if (type == PostEditFieldType.minOrderFee) {
      return state.minOrderFee;
    }
    if (type == PostEditFieldType.location) {
      return state.location;
    }
    return null;
  }

  void updateFieldValue(PostEditFieldType type, Object value) {
    if (type == PostEditFieldType.title) {
      state = state.copyWith(title: value as String);
    }
    if (type == PostEditFieldType.content) {
      state = state.copyWith(content: value as String);
    }
    if (type == PostEditFieldType.restaurantCategory) {
      state = state.copyWith(restaurantCategory: value as RestaurantCategory);
    }
    if (type == PostEditFieldType.restaurantName) {
      state = state.copyWith(restaurantName: value as String);
    }
    if (type == PostEditFieldType.deliveryFee) {
      state = state.copyWith(deliveryFee: value as String);
    }
    if (type == PostEditFieldType.minOrderFee) {
      state = state.copyWith(minOrderFee: value as String);
    }
    if (type == PostEditFieldType.location) {
      state = state.copyWith(location: value as String);
    }
  }

  String? getFieldErrorValue(PostEditFieldType type) {
    if (type == PostEditFieldType.title) {
      return state.titleErrMsg;
    }
    if (type == PostEditFieldType.content) {
      return state.contentErrMsg;
    }
    if (type == PostEditFieldType.restaurantCategory) {
      return state.restaurantCategoryErrMsg;
    }
    if (type == PostEditFieldType.restaurantName) {
      return state.restaurantNameErrMsg;
    }
    if (type == PostEditFieldType.deliveryFee) {
      return state.deliveryFeeErrMsg;
    }
    if (type == PostEditFieldType.minOrderFee) {
      return state.minOrderFeeErrMsg;
    }
    if (type == PostEditFieldType.location) {
      return state.location;
    }

    return null;
  }

  void updateFieldErrorValue(PostEditFieldType type, String? value) {
    if (type == PostEditFieldType.title) {
      state = state.copyWith(titleErrMsg: value);
    }
    if (type == PostEditFieldType.content) {
      state = state.copyWith(contentErrMsg: value);
    }
    if (type == PostEditFieldType.restaurantCategory) {
      state = state.copyWith(restaurantCategoryErrMsg: value);
    }
    if (type == PostEditFieldType.restaurantName) {
      state = state.copyWith(restaurantNameErrMsg: value);
    }
    if (type == PostEditFieldType.deliveryFee) {
      state = state.copyWith(deliveryFeeErrMsg: value);
    }
    if (type == PostEditFieldType.minOrderFee) {
      state = state.copyWith(minOrderFeeErrMsg: value);
    }
    if (type == PostEditFieldType.location) {
      state = state.copyWith(locationErrMsg: value);
    }
  }

  void checkFocusedFieldChange(PostEditFieldType type) {
    if (state.currentFocusedField == null) {
      state = state.copyWith(currentFocusedField: type);
      return;
    }

    if (state.currentFocusedField == PostEditFieldType.restaurantCategory) {
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

  ValidationResult validate(PostEditFieldType type, String value) {
    final onlyNumberRegExp = RegExp(r'^[0-9]+$');

    if (type == PostEditFieldType.title) {
      if (value.isEmpty) {
        return (isValid: false, message: '제목을 입력해주세요');
      }
      if (value.length < 2 || value.length > 20) {
        return (isValid: false, message: '제목은 2글자 이상 20글자 이하로만 입력 가능합니다.');
      }
      return (isValid: true, message: null);
    }

    if (type == PostEditFieldType.content) {
      if (value.isEmpty) {
        return (isValid: false, message: '본문을 입력해주세요');
      }
      if (value.length < 2 || value.length > 100) {
        return (isValid: false, message: '제목은 2글자 이상 20글자 이하로만 입력 가능합니다.');
      }
      return (isValid: true, message: null);
    }

    if (type == PostEditFieldType.deliveryFee) {
      if (value.isEmpty) {
        return (isValid: false, message: '배달비를 입력해주세요');
      }
      if (!onlyNumberRegExp.hasMatch(value)) {
        return (
          isValid: false,
          message: '배달비는 숫자만 가능합니다.',
        );
      }

      try {
        if (int.parse(value) < 0 || int.parse(value) > 10000) {
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

    if (type == PostEditFieldType.minOrderFee) {
      if (value.isEmpty) {
        return (isValid: false, message: '최소주문금액을 입력해주세요');
      }
      if (!onlyNumberRegExp.hasMatch(value)) {
        return (
          isValid: false,
          message: '최소주문금액은 숫자만 가능합니다.',
        );
      }

      try {
        if (int.parse(value) < 0 || int.parse(value) > 100000) {
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

    if (type == PostEditFieldType.location) {
      if (value.isEmpty) {
        return (isValid: false, message: '본문을 입력해주세요');
      }
      return (isValid: true, message: null);
    }

    return (isValid: false, message: "존재하지 않은 필드입니다.");
  }

  // Future<void> getImage() async {
  //   List<Asset> resultList =
  //       await MultiImagePicker.pickImages(maxImages: 10, enableCamera: true,selectedAssets:state.images);
  //
  //     state = state.copyWith(images: resultList);
  // }

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
      resultList = await MultiImagePicker.pickImages(
        selectedAssets: state.images
      );
    } on Exception catch (e) {
      print(e);
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    state = state.copyWith(images: resultList);
  }

  bool checkAllFieldValid() {
    for (var fieldType in PostEditFieldType.values) {
      if (fieldType == PostEditFieldType.restaurantCategory) continue;

      ValidationResult validationResult =
          validate(fieldType, getFieldValue(fieldType) as String);
      if (!validationResult.isValid) {
        updateFieldErrorValue(fieldType, validationResult.message!);
        return false;
      }
    }

    return true;
  }

  Future<bool> registerPost() async {
    if (!checkAllFieldValid()) {
      // return false;
    }

    for (var fieldType in PostEditFieldType.values) {
      if (fieldType == PostEditFieldType.restaurantCategory) {
        print((getFieldValue(PostEditFieldType.restaurantCategory)
                as RestaurantCategory)
            .name);
        continue;
      }

      print((getFieldValue(fieldType) as String));
    }

    return true;
  }
}
