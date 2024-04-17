// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postEditModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostEditModel {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  RestaurantCategory get restaurantCategory =>
      throw _privateConstructorUsedError;
  String get restaurantName => throw _privateConstructorUsedError;
  String get deliveryFee => throw _privateConstructorUsedError;
  String get minOrderFee => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  List<Asset> get images => throw _privateConstructorUsedError;
  String? get titleErrMsg => throw _privateConstructorUsedError;
  String? get contentErrMsg => throw _privateConstructorUsedError;
  String? get restaurantCategoryErrMsg => throw _privateConstructorUsedError;
  String? get restaurantNameErrMsg => throw _privateConstructorUsedError;
  String? get deliveryFeeErrMsg => throw _privateConstructorUsedError;
  String? get minOrderFeeErrMsg => throw _privateConstructorUsedError;
  String? get locationErrMsg => throw _privateConstructorUsedError;
  PostEditFieldType? get currentFocusedField =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostEditModelCopyWith<PostEditModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostEditModelCopyWith<$Res> {
  factory $PostEditModelCopyWith(
          PostEditModel value, $Res Function(PostEditModel) then) =
      _$PostEditModelCopyWithImpl<$Res, PostEditModel>;
  @useResult
  $Res call(
      {String title,
      String content,
      RestaurantCategory restaurantCategory,
      String restaurantName,
      String deliveryFee,
      String minOrderFee,
      String location,
      List<Asset> images,
      String? titleErrMsg,
      String? contentErrMsg,
      String? restaurantCategoryErrMsg,
      String? restaurantNameErrMsg,
      String? deliveryFeeErrMsg,
      String? minOrderFeeErrMsg,
      String? locationErrMsg,
      PostEditFieldType? currentFocusedField});
}

/// @nodoc
class _$PostEditModelCopyWithImpl<$Res, $Val extends PostEditModel>
    implements $PostEditModelCopyWith<$Res> {
  _$PostEditModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? restaurantCategory = null,
    Object? restaurantName = null,
    Object? deliveryFee = null,
    Object? minOrderFee = null,
    Object? location = null,
    Object? images = null,
    Object? titleErrMsg = freezed,
    Object? contentErrMsg = freezed,
    Object? restaurantCategoryErrMsg = freezed,
    Object? restaurantNameErrMsg = freezed,
    Object? deliveryFeeErrMsg = freezed,
    Object? minOrderFeeErrMsg = freezed,
    Object? locationErrMsg = freezed,
    Object? currentFocusedField = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantCategory: null == restaurantCategory
          ? _value.restaurantCategory
          : restaurantCategory // ignore: cast_nullable_to_non_nullable
              as RestaurantCategory,
      restaurantName: null == restaurantName
          ? _value.restaurantName
          : restaurantName // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryFee: null == deliveryFee
          ? _value.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as String,
      minOrderFee: null == minOrderFee
          ? _value.minOrderFee
          : minOrderFee // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Asset>,
      titleErrMsg: freezed == titleErrMsg
          ? _value.titleErrMsg
          : titleErrMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      contentErrMsg: freezed == contentErrMsg
          ? _value.contentErrMsg
          : contentErrMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      restaurantCategoryErrMsg: freezed == restaurantCategoryErrMsg
          ? _value.restaurantCategoryErrMsg
          : restaurantCategoryErrMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      restaurantNameErrMsg: freezed == restaurantNameErrMsg
          ? _value.restaurantNameErrMsg
          : restaurantNameErrMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryFeeErrMsg: freezed == deliveryFeeErrMsg
          ? _value.deliveryFeeErrMsg
          : deliveryFeeErrMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      minOrderFeeErrMsg: freezed == minOrderFeeErrMsg
          ? _value.minOrderFeeErrMsg
          : minOrderFeeErrMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      locationErrMsg: freezed == locationErrMsg
          ? _value.locationErrMsg
          : locationErrMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      currentFocusedField: freezed == currentFocusedField
          ? _value.currentFocusedField
          : currentFocusedField // ignore: cast_nullable_to_non_nullable
              as PostEditFieldType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostEditModelImplCopyWith<$Res>
    implements $PostEditModelCopyWith<$Res> {
  factory _$$PostEditModelImplCopyWith(
          _$PostEditModelImpl value, $Res Function(_$PostEditModelImpl) then) =
      __$$PostEditModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String content,
      RestaurantCategory restaurantCategory,
      String restaurantName,
      String deliveryFee,
      String minOrderFee,
      String location,
      List<Asset> images,
      String? titleErrMsg,
      String? contentErrMsg,
      String? restaurantCategoryErrMsg,
      String? restaurantNameErrMsg,
      String? deliveryFeeErrMsg,
      String? minOrderFeeErrMsg,
      String? locationErrMsg,
      PostEditFieldType? currentFocusedField});
}

/// @nodoc
class __$$PostEditModelImplCopyWithImpl<$Res>
    extends _$PostEditModelCopyWithImpl<$Res, _$PostEditModelImpl>
    implements _$$PostEditModelImplCopyWith<$Res> {
  __$$PostEditModelImplCopyWithImpl(
      _$PostEditModelImpl _value, $Res Function(_$PostEditModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? restaurantCategory = null,
    Object? restaurantName = null,
    Object? deliveryFee = null,
    Object? minOrderFee = null,
    Object? location = null,
    Object? images = null,
    Object? titleErrMsg = freezed,
    Object? contentErrMsg = freezed,
    Object? restaurantCategoryErrMsg = freezed,
    Object? restaurantNameErrMsg = freezed,
    Object? deliveryFeeErrMsg = freezed,
    Object? minOrderFeeErrMsg = freezed,
    Object? locationErrMsg = freezed,
    Object? currentFocusedField = freezed,
  }) {
    return _then(_$PostEditModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantCategory: null == restaurantCategory
          ? _value.restaurantCategory
          : restaurantCategory // ignore: cast_nullable_to_non_nullable
              as RestaurantCategory,
      restaurantName: null == restaurantName
          ? _value.restaurantName
          : restaurantName // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryFee: null == deliveryFee
          ? _value.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as String,
      minOrderFee: null == minOrderFee
          ? _value.minOrderFee
          : minOrderFee // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Asset>,
      titleErrMsg: freezed == titleErrMsg
          ? _value.titleErrMsg
          : titleErrMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      contentErrMsg: freezed == contentErrMsg
          ? _value.contentErrMsg
          : contentErrMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      restaurantCategoryErrMsg: freezed == restaurantCategoryErrMsg
          ? _value.restaurantCategoryErrMsg
          : restaurantCategoryErrMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      restaurantNameErrMsg: freezed == restaurantNameErrMsg
          ? _value.restaurantNameErrMsg
          : restaurantNameErrMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryFeeErrMsg: freezed == deliveryFeeErrMsg
          ? _value.deliveryFeeErrMsg
          : deliveryFeeErrMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      minOrderFeeErrMsg: freezed == minOrderFeeErrMsg
          ? _value.minOrderFeeErrMsg
          : minOrderFeeErrMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      locationErrMsg: freezed == locationErrMsg
          ? _value.locationErrMsg
          : locationErrMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      currentFocusedField: freezed == currentFocusedField
          ? _value.currentFocusedField
          : currentFocusedField // ignore: cast_nullable_to_non_nullable
              as PostEditFieldType?,
    ));
  }
}

/// @nodoc

class _$PostEditModelImpl
    with DiagnosticableTreeMixin
    implements _PostEditModel {
  const _$PostEditModelImpl(
      {required this.title,
      required this.content,
      required this.restaurantCategory,
      required this.restaurantName,
      required this.deliveryFee,
      required this.minOrderFee,
      required this.location,
      required final List<Asset> images,
      required this.titleErrMsg,
      required this.contentErrMsg,
      required this.restaurantCategoryErrMsg,
      required this.restaurantNameErrMsg,
      required this.deliveryFeeErrMsg,
      required this.minOrderFeeErrMsg,
      required this.locationErrMsg,
      required this.currentFocusedField})
      : _images = images;

  @override
  final String title;
  @override
  final String content;
  @override
  final RestaurantCategory restaurantCategory;
  @override
  final String restaurantName;
  @override
  final String deliveryFee;
  @override
  final String minOrderFee;
  @override
  final String location;
  final List<Asset> _images;
  @override
  List<Asset> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String? titleErrMsg;
  @override
  final String? contentErrMsg;
  @override
  final String? restaurantCategoryErrMsg;
  @override
  final String? restaurantNameErrMsg;
  @override
  final String? deliveryFeeErrMsg;
  @override
  final String? minOrderFeeErrMsg;
  @override
  final String? locationErrMsg;
  @override
  final PostEditFieldType? currentFocusedField;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostEditModel(title: $title, content: $content, restaurantCategory: $restaurantCategory, restaurantName: $restaurantName, deliveryFee: $deliveryFee, minOrderFee: $minOrderFee, location: $location, images: $images, titleErrMsg: $titleErrMsg, contentErrMsg: $contentErrMsg, restaurantCategoryErrMsg: $restaurantCategoryErrMsg, restaurantNameErrMsg: $restaurantNameErrMsg, deliveryFeeErrMsg: $deliveryFeeErrMsg, minOrderFeeErrMsg: $minOrderFeeErrMsg, locationErrMsg: $locationErrMsg, currentFocusedField: $currentFocusedField)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostEditModel'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('restaurantCategory', restaurantCategory))
      ..add(DiagnosticsProperty('restaurantName', restaurantName))
      ..add(DiagnosticsProperty('deliveryFee', deliveryFee))
      ..add(DiagnosticsProperty('minOrderFee', minOrderFee))
      ..add(DiagnosticsProperty('location', location))
      ..add(DiagnosticsProperty('images', images))
      ..add(DiagnosticsProperty('titleErrMsg', titleErrMsg))
      ..add(DiagnosticsProperty('contentErrMsg', contentErrMsg))
      ..add(DiagnosticsProperty(
          'restaurantCategoryErrMsg', restaurantCategoryErrMsg))
      ..add(DiagnosticsProperty('restaurantNameErrMsg', restaurantNameErrMsg))
      ..add(DiagnosticsProperty('deliveryFeeErrMsg', deliveryFeeErrMsg))
      ..add(DiagnosticsProperty('minOrderFeeErrMsg', minOrderFeeErrMsg))
      ..add(DiagnosticsProperty('locationErrMsg', locationErrMsg))
      ..add(DiagnosticsProperty('currentFocusedField', currentFocusedField));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostEditModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.restaurantCategory, restaurantCategory) ||
                other.restaurantCategory == restaurantCategory) &&
            (identical(other.restaurantName, restaurantName) ||
                other.restaurantName == restaurantName) &&
            (identical(other.deliveryFee, deliveryFee) ||
                other.deliveryFee == deliveryFee) &&
            (identical(other.minOrderFee, minOrderFee) ||
                other.minOrderFee == minOrderFee) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.titleErrMsg, titleErrMsg) ||
                other.titleErrMsg == titleErrMsg) &&
            (identical(other.contentErrMsg, contentErrMsg) ||
                other.contentErrMsg == contentErrMsg) &&
            (identical(
                    other.restaurantCategoryErrMsg, restaurantCategoryErrMsg) ||
                other.restaurantCategoryErrMsg == restaurantCategoryErrMsg) &&
            (identical(other.restaurantNameErrMsg, restaurantNameErrMsg) ||
                other.restaurantNameErrMsg == restaurantNameErrMsg) &&
            (identical(other.deliveryFeeErrMsg, deliveryFeeErrMsg) ||
                other.deliveryFeeErrMsg == deliveryFeeErrMsg) &&
            (identical(other.minOrderFeeErrMsg, minOrderFeeErrMsg) ||
                other.minOrderFeeErrMsg == minOrderFeeErrMsg) &&
            (identical(other.locationErrMsg, locationErrMsg) ||
                other.locationErrMsg == locationErrMsg) &&
            (identical(other.currentFocusedField, currentFocusedField) ||
                other.currentFocusedField == currentFocusedField));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      content,
      restaurantCategory,
      restaurantName,
      deliveryFee,
      minOrderFee,
      location,
      const DeepCollectionEquality().hash(_images),
      titleErrMsg,
      contentErrMsg,
      restaurantCategoryErrMsg,
      restaurantNameErrMsg,
      deliveryFeeErrMsg,
      minOrderFeeErrMsg,
      locationErrMsg,
      currentFocusedField);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostEditModelImplCopyWith<_$PostEditModelImpl> get copyWith =>
      __$$PostEditModelImplCopyWithImpl<_$PostEditModelImpl>(this, _$identity);
}

abstract class _PostEditModel implements PostEditModel {
  const factory _PostEditModel(
          {required final String title,
          required final String content,
          required final RestaurantCategory restaurantCategory,
          required final String restaurantName,
          required final String deliveryFee,
          required final String minOrderFee,
          required final String location,
          required final List<Asset> images,
          required final String? titleErrMsg,
          required final String? contentErrMsg,
          required final String? restaurantCategoryErrMsg,
          required final String? restaurantNameErrMsg,
          required final String? deliveryFeeErrMsg,
          required final String? minOrderFeeErrMsg,
          required final String? locationErrMsg,
          required final PostEditFieldType? currentFocusedField}) =
      _$PostEditModelImpl;

  @override
  String get title;
  @override
  String get content;
  @override
  RestaurantCategory get restaurantCategory;
  @override
  String get restaurantName;
  @override
  String get deliveryFee;
  @override
  String get minOrderFee;
  @override
  String get location;
  @override
  List<Asset> get images;
  @override
  String? get titleErrMsg;
  @override
  String? get contentErrMsg;
  @override
  String? get restaurantCategoryErrMsg;
  @override
  String? get restaurantNameErrMsg;
  @override
  String? get deliveryFeeErrMsg;
  @override
  String? get minOrderFeeErrMsg;
  @override
  String? get locationErrMsg;
  @override
  PostEditFieldType? get currentFocusedField;
  @override
  @JsonKey(ignore: true)
  _$$PostEditModelImplCopyWith<_$PostEditModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
