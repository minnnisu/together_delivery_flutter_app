// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_save_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostSaveRequestModel _$PostSaveRequestModelFromJson(Map<String, dynamic> json) {
  return _PostSaveRequestModel.fromJson(json);
}

/// @nodoc
mixin _$PostSaveRequestModel {
  String get content => throw _privateConstructorUsedError;
  String get restaurantName => throw _privateConstructorUsedError;
  String get categoryCode => throw _privateConstructorUsedError;
  int get deliveryFee => throw _privateConstructorUsedError;
  int get minOrderFee => throw _privateConstructorUsedError;
  MeetLocationModel get meetLocation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostSaveRequestModelCopyWith<PostSaveRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostSaveRequestModelCopyWith<$Res> {
  factory $PostSaveRequestModelCopyWith(PostSaveRequestModel value,
          $Res Function(PostSaveRequestModel) then) =
      _$PostSaveRequestModelCopyWithImpl<$Res, PostSaveRequestModel>;
  @useResult
  $Res call(
      {String content,
      String restaurantName,
      String categoryCode,
      int deliveryFee,
      int minOrderFee,
      MeetLocationModel meetLocation});

  $MeetLocationModelCopyWith<$Res> get meetLocation;
}

/// @nodoc
class _$PostSaveRequestModelCopyWithImpl<$Res,
        $Val extends PostSaveRequestModel>
    implements $PostSaveRequestModelCopyWith<$Res> {
  _$PostSaveRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? restaurantName = null,
    Object? categoryCode = null,
    Object? deliveryFee = null,
    Object? minOrderFee = null,
    Object? meetLocation = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantName: null == restaurantName
          ? _value.restaurantName
          : restaurantName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryCode: null == categoryCode
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryFee: null == deliveryFee
          ? _value.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as int,
      minOrderFee: null == minOrderFee
          ? _value.minOrderFee
          : minOrderFee // ignore: cast_nullable_to_non_nullable
              as int,
      meetLocation: null == meetLocation
          ? _value.meetLocation
          : meetLocation // ignore: cast_nullable_to_non_nullable
              as MeetLocationModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MeetLocationModelCopyWith<$Res> get meetLocation {
    return $MeetLocationModelCopyWith<$Res>(_value.meetLocation, (value) {
      return _then(_value.copyWith(meetLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostSaveRequestModelImplCopyWith<$Res>
    implements $PostSaveRequestModelCopyWith<$Res> {
  factory _$$PostSaveRequestModelImplCopyWith(_$PostSaveRequestModelImpl value,
          $Res Function(_$PostSaveRequestModelImpl) then) =
      __$$PostSaveRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String content,
      String restaurantName,
      String categoryCode,
      int deliveryFee,
      int minOrderFee,
      MeetLocationModel meetLocation});

  @override
  $MeetLocationModelCopyWith<$Res> get meetLocation;
}

/// @nodoc
class __$$PostSaveRequestModelImplCopyWithImpl<$Res>
    extends _$PostSaveRequestModelCopyWithImpl<$Res, _$PostSaveRequestModelImpl>
    implements _$$PostSaveRequestModelImplCopyWith<$Res> {
  __$$PostSaveRequestModelImplCopyWithImpl(_$PostSaveRequestModelImpl _value,
      $Res Function(_$PostSaveRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? restaurantName = null,
    Object? categoryCode = null,
    Object? deliveryFee = null,
    Object? minOrderFee = null,
    Object? meetLocation = null,
  }) {
    return _then(_$PostSaveRequestModelImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantName: null == restaurantName
          ? _value.restaurantName
          : restaurantName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryCode: null == categoryCode
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryFee: null == deliveryFee
          ? _value.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as int,
      minOrderFee: null == minOrderFee
          ? _value.minOrderFee
          : minOrderFee // ignore: cast_nullable_to_non_nullable
              as int,
      meetLocation: null == meetLocation
          ? _value.meetLocation
          : meetLocation // ignore: cast_nullable_to_non_nullable
              as MeetLocationModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostSaveRequestModelImpl implements _PostSaveRequestModel {
  const _$PostSaveRequestModelImpl(
      {required this.content,
      required this.restaurantName,
      required this.categoryCode,
      required this.deliveryFee,
      required this.minOrderFee,
      required this.meetLocation});

  factory _$PostSaveRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostSaveRequestModelImplFromJson(json);

  @override
  final String content;
  @override
  final String restaurantName;
  @override
  final String categoryCode;
  @override
  final int deliveryFee;
  @override
  final int minOrderFee;
  @override
  final MeetLocationModel meetLocation;

  @override
  String toString() {
    return 'PostSaveRequestModel(content: $content, restaurantName: $restaurantName, categoryCode: $categoryCode, deliveryFee: $deliveryFee, minOrderFee: $minOrderFee, meetLocation: $meetLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostSaveRequestModelImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.restaurantName, restaurantName) ||
                other.restaurantName == restaurantName) &&
            (identical(other.categoryCode, categoryCode) ||
                other.categoryCode == categoryCode) &&
            (identical(other.deliveryFee, deliveryFee) ||
                other.deliveryFee == deliveryFee) &&
            (identical(other.minOrderFee, minOrderFee) ||
                other.minOrderFee == minOrderFee) &&
            (identical(other.meetLocation, meetLocation) ||
                other.meetLocation == meetLocation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content, restaurantName,
      categoryCode, deliveryFee, minOrderFee, meetLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostSaveRequestModelImplCopyWith<_$PostSaveRequestModelImpl>
      get copyWith =>
          __$$PostSaveRequestModelImplCopyWithImpl<_$PostSaveRequestModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostSaveRequestModelImplToJson(
      this,
    );
  }
}

abstract class _PostSaveRequestModel implements PostSaveRequestModel {
  const factory _PostSaveRequestModel(
          {required final String content,
          required final String restaurantName,
          required final String categoryCode,
          required final int deliveryFee,
          required final int minOrderFee,
          required final MeetLocationModel meetLocation}) =
      _$PostSaveRequestModelImpl;

  factory _PostSaveRequestModel.fromJson(Map<String, dynamic> json) =
      _$PostSaveRequestModelImpl.fromJson;

  @override
  String get content;
  @override
  String get restaurantName;
  @override
  String get categoryCode;
  @override
  int get deliveryFee;
  @override
  int get minOrderFee;
  @override
  MeetLocationModel get meetLocation;
  @override
  @JsonKey(ignore: true)
  _$$PostSaveRequestModelImplCopyWith<_$PostSaveRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
