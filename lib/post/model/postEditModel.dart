import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:together_delivery_app/post/const/postEditFieldType.dart';
import '../../constant/restaurantCategory.dart';

part 'postEditModel.freezed.dart';


@freezed
class PostEditModel with _$PostEditModel{
  const factory PostEditModel({
    required String title,
    required String content,
    required RestaurantCategory restaurantCategory,
    required String restaurantName,
    required String deliveryFee,
    required String minOrderFee,
    required String location,
    required List<XFile> images,


    required String? titleErrMsg,
    required String? contentErrMsg,
    required String? restaurantCategoryErrMsg,
    required String? restaurantNameErrMsg,
    required String? deliveryFeeErrMsg,
    required String? minOrderFeeErrMsg,
    required String? locationErrMsg,

    required PostEditFieldType? currentFocusedField,
  }) = _PostEditModel;
}