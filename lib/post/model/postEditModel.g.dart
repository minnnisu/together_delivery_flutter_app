// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postEditModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostEditModelImpl _$$PostEditModelImplFromJson(Map<String, dynamic> json) =>
    _$PostEditModelImpl(
      title: json['title'] as String,
      content: json['content'] as String,
      restaurantCategory:
          $enumDecode(_$RestaurantCategoryEnumMap, json['restaurantCategory']),
      restaurantName: json['restaurantName'] as String,
      deliveryFee: json['deliveryFee'] as String,
      minOrderFee: json['minOrderFee'] as String,
      location: json['location'] as String,
      titleErrMsg: json['titleErrMsg'] as String?,
      contentErrMsg: json['contentErrMsg'] as String?,
      restaurantCategoryErrMsg: json['restaurantCategoryErrMsg'] as String?,
      restaurantNameErrMsg: json['restaurantNameErrMsg'] as String?,
      deliveryFeeErrMsg: json['deliveryFeeErrMsg'] as String?,
      minOrderFeeErrMsg: json['minOrderFeeErrMsg'] as String?,
      locationErrMsg: json['locationErrMsg'] as String?,
      currentFocusedField: $enumDecodeNullable(
          _$PostEditFieldTypeEnumMap, json['currentFocusedField']),
    );

Map<String, dynamic> _$$PostEditModelImplToJson(_$PostEditModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'restaurantCategory':
          _$RestaurantCategoryEnumMap[instance.restaurantCategory]!,
      'restaurantName': instance.restaurantName,
      'deliveryFee': instance.deliveryFee,
      'minOrderFee': instance.minOrderFee,
      'location': instance.location,
      'titleErrMsg': instance.titleErrMsg,
      'contentErrMsg': instance.contentErrMsg,
      'restaurantCategoryErrMsg': instance.restaurantCategoryErrMsg,
      'restaurantNameErrMsg': instance.restaurantNameErrMsg,
      'deliveryFeeErrMsg': instance.deliveryFeeErrMsg,
      'minOrderFeeErrMsg': instance.minOrderFeeErrMsg,
      'locationErrMsg': instance.locationErrMsg,
      'currentFocusedField':
          _$PostEditFieldTypeEnumMap[instance.currentFocusedField],
    };

const _$RestaurantCategoryEnumMap = {
  RestaurantCategory.PORK_FEET_BOSSAM: 'PORK_FEET_BOSSAM',
  RestaurantCategory.KOREAN_SOUP: 'KOREAN_SOUP',
  RestaurantCategory.JAPANESE_FOOD: 'JAPANESE_FOOD',
  RestaurantCategory.PIZZA: 'PIZZA',
  RestaurantCategory.MEAT: 'MEAT',
  RestaurantCategory.NIGHT_FOOD: 'NIGHT_FOOD',
  RestaurantCategory.AMERICAN_FOOD: 'AMERICAN_FOOD',
  RestaurantCategory.CHICKEN: 'CHICKEN',
  RestaurantCategory.CHINESE_FOOD: 'CHINESE_FOOD',
  RestaurantCategory.ASIAN_FOOD: 'ASIAN_FOOD',
  RestaurantCategory.BAEBAN_WATER_GREUl_NOODLE: 'BAEBAN_WATER_GREUl_NOODLE',
  RestaurantCategory.LUNCH_BOX: 'LUNCH_BOX',
  RestaurantCategory.SNACK_BAR: 'SNACK_BAR',
  RestaurantCategory.CAFE: 'CAFE',
  RestaurantCategory.FAST_FOOD: 'FAST_FOOD',
  RestaurantCategory.ETC: 'ETC',
};

const _$PostEditFieldTypeEnumMap = {
  PostEditFieldType.title: 'title',
  PostEditFieldType.content: 'content',
  PostEditFieldType.restaurantCategory: 'restaurantCategory',
  PostEditFieldType.restaurantName: 'restaurantName',
  PostEditFieldType.deliveryFee: 'deliveryFee',
  PostEditFieldType.minOrderFee: 'minOrderFee',
  PostEditFieldType.location: 'location',
};
