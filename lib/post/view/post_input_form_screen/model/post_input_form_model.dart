import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:multi_image_picker_plus/multi_image_picker_plus.dart';
import 'package:together_delivery_app/common/const/restaurantCategory.dart';
import 'package:together_delivery_app/post/model/meet_location_model.dart';
import 'package:together_delivery_app/post/view/post_input_form_screen/const/post_input_form_field_type.dart';

part 'post_input_form_model.freezed.dart';


@Freezed(makeCollectionsUnmodifiable: false)
class PostInputFormModel with _$PostInputFormModel{
  const factory PostInputFormModel({
    required RestaurantCategory restaurantCategory,
    required String restaurantName,
    required String deliveryFee,
    required String minOrderFee,
    required String content,
    required MeetLocationModel? meetLocation,
    required String addressDescription,
    required List<Asset> images,

    required String? restaurantCategoryErrMsg,
    required String? restaurantNameErrMsg,
    required String? deliveryFeeErrMsg,
    required String? minOrderFeeErrMsg,
    required String? contentErrMsg,
    required String? meetLocationErrMsg,
    required String? addressDescriptionErrMsg,

    required PostInputFormFieldType? currentFocusedField,
  }) = _PostInputFormModel;
}