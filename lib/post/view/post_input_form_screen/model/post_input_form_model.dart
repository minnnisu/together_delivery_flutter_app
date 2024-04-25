import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:multi_image_picker_plus/multi_image_picker_plus.dart';
import 'package:together_delivery_app/common/const/restaurantCategory.dart';
import 'package:together_delivery_app/post/view/post_input_form_screen/const/post_input_form_field_type.dart';

part 'post_input_form_model.freezed.dart';


@Freezed(makeCollectionsUnmodifiable: false)
class PostInputFormModel with _$PostInputFormModel{
  const factory PostInputFormModel({
    required String title,
    required String content,
    required RestaurantCategory restaurantCategory,
    required String restaurantName,
    required String deliveryFee,
    required String minOrderFee,
    required String location,
    required List<Asset> images,


    required String? titleErrMsg,
    required String? contentErrMsg,
    required String? restaurantCategoryErrMsg,
    required String? restaurantNameErrMsg,
    required String? deliveryFeeErrMsg,
    required String? minOrderFeeErrMsg,
    required String? locationErrMsg,

    required PostInputFormFieldType? currentFocusedField,
  }) = _PostInputFormModel;
}