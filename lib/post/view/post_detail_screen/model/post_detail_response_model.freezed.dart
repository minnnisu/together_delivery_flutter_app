// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_detail_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostDetailResponseModel _$PostDetailResponseModelFromJson(
    Map<String, dynamic> json) {
  return _PostDetailResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PostDetailResponseModel {
  int get id => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get restaurantName => throw _privateConstructorUsedError;
  String get categoryCode => throw _privateConstructorUsedError;
  int get deliveryFee => throw _privateConstructorUsedError;
  int get minOrderFee => throw _privateConstructorUsedError;
  MeetLocationModel get meetLocation => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  List<Image> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostDetailResponseModelCopyWith<PostDetailResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostDetailResponseModelCopyWith<$Res> {
  factory $PostDetailResponseModelCopyWith(PostDetailResponseModel value,
          $Res Function(PostDetailResponseModel) then) =
      _$PostDetailResponseModelCopyWithImpl<$Res, PostDetailResponseModel>;
  @useResult
  $Res call(
      {int id,
      String nickname,
      String content,
      String restaurantName,
      String categoryCode,
      int deliveryFee,
      int minOrderFee,
      MeetLocationModel meetLocation,
      bool status,
      String createdAt,
      String updatedAt,
      List<Image> images});

  $MeetLocationModelCopyWith<$Res> get meetLocation;
}

/// @nodoc
class _$PostDetailResponseModelCopyWithImpl<$Res,
        $Val extends PostDetailResponseModel>
    implements $PostDetailResponseModelCopyWith<$Res> {
  _$PostDetailResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
    Object? content = null,
    Object? restaurantName = null,
    Object? categoryCode = null,
    Object? deliveryFee = null,
    Object? minOrderFee = null,
    Object? meetLocation = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
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
abstract class _$$PostDetailResponseModelImplCopyWith<$Res>
    implements $PostDetailResponseModelCopyWith<$Res> {
  factory _$$PostDetailResponseModelImplCopyWith(
          _$PostDetailResponseModelImpl value,
          $Res Function(_$PostDetailResponseModelImpl) then) =
      __$$PostDetailResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String nickname,
      String content,
      String restaurantName,
      String categoryCode,
      int deliveryFee,
      int minOrderFee,
      MeetLocationModel meetLocation,
      bool status,
      String createdAt,
      String updatedAt,
      List<Image> images});

  @override
  $MeetLocationModelCopyWith<$Res> get meetLocation;
}

/// @nodoc
class __$$PostDetailResponseModelImplCopyWithImpl<$Res>
    extends _$PostDetailResponseModelCopyWithImpl<$Res,
        _$PostDetailResponseModelImpl>
    implements _$$PostDetailResponseModelImplCopyWith<$Res> {
  __$$PostDetailResponseModelImplCopyWithImpl(
      _$PostDetailResponseModelImpl _value,
      $Res Function(_$PostDetailResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
    Object? content = null,
    Object? restaurantName = null,
    Object? categoryCode = null,
    Object? deliveryFee = null,
    Object? minOrderFee = null,
    Object? meetLocation = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? images = null,
  }) {
    return _then(_$PostDetailResponseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostDetailResponseModelImpl implements _PostDetailResponseModel {
  const _$PostDetailResponseModelImpl(
      {required this.id,
      required this.nickname,
      required this.content,
      required this.restaurantName,
      required this.categoryCode,
      required this.deliveryFee,
      required this.minOrderFee,
      required this.meetLocation,
      required this.status,
      required this.createdAt,
      required this.updatedAt,
      required final List<Image> images})
      : _images = images;

  factory _$PostDetailResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostDetailResponseModelImplFromJson(json);

  @override
  final int id;
  @override
  final String nickname;
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
  final bool status;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  final List<Image> _images;
  @override
  List<Image> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'PostDetailResponseModel(id: $id, nickname: $nickname, content: $content, restaurantName: $restaurantName, categoryCode: $categoryCode, deliveryFee: $deliveryFee, minOrderFee: $minOrderFee, meetLocation: $meetLocation, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostDetailResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
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
                other.meetLocation == meetLocation) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      nickname,
      content,
      restaurantName,
      categoryCode,
      deliveryFee,
      minOrderFee,
      meetLocation,
      status,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostDetailResponseModelImplCopyWith<_$PostDetailResponseModelImpl>
      get copyWith => __$$PostDetailResponseModelImplCopyWithImpl<
          _$PostDetailResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostDetailResponseModelImplToJson(
      this,
    );
  }
}

abstract class _PostDetailResponseModel implements PostDetailResponseModel {
  const factory _PostDetailResponseModel(
      {required final int id,
      required final String nickname,
      required final String content,
      required final String restaurantName,
      required final String categoryCode,
      required final int deliveryFee,
      required final int minOrderFee,
      required final MeetLocationModel meetLocation,
      required final bool status,
      required final String createdAt,
      required final String updatedAt,
      required final List<Image> images}) = _$PostDetailResponseModelImpl;

  factory _PostDetailResponseModel.fromJson(Map<String, dynamic> json) =
      _$PostDetailResponseModelImpl.fromJson;

  @override
  int get id;
  @override
  String get nickname;
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
  bool get status;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  List<Image> get images;
  @override
  @JsonKey(ignore: true)
  _$$PostDetailResponseModelImplCopyWith<_$PostDetailResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
mixin _$Image {
  int get id => throw _privateConstructorUsedError;
  String get imageName => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res, Image>;
  @useResult
  $Res call({int id, String imageName, DateTime createdAt});
}

/// @nodoc
class _$ImageCopyWithImpl<$Res, $Val extends Image>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageName = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageName: null == imageName
          ? _value.imageName
          : imageName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageImplCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$ImageImplCopyWith(
          _$ImageImpl value, $Res Function(_$ImageImpl) then) =
      __$$ImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String imageName, DateTime createdAt});
}

/// @nodoc
class __$$ImageImplCopyWithImpl<$Res>
    extends _$ImageCopyWithImpl<$Res, _$ImageImpl>
    implements _$$ImageImplCopyWith<$Res> {
  __$$ImageImplCopyWithImpl(
      _$ImageImpl _value, $Res Function(_$ImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageName = null,
    Object? createdAt = null,
  }) {
    return _then(_$ImageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageName: null == imageName
          ? _value.imageName
          : imageName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageImpl implements _Image {
  const _$ImageImpl(
      {required this.id, required this.imageName, required this.createdAt});

  factory _$ImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageImplFromJson(json);

  @override
  final int id;
  @override
  final String imageName;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Image(id: $id, imageName: $imageName, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageName, imageName) ||
                other.imageName == imageName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, imageName, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      __$$ImageImplCopyWithImpl<_$ImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageImplToJson(
      this,
    );
  }
}

abstract class _Image implements Image {
  const factory _Image(
      {required final int id,
      required final String imageName,
      required final DateTime createdAt}) = _$ImageImpl;

  factory _Image.fromJson(Map<String, dynamic> json) = _$ImageImpl.fromJson;

  @override
  int get id;
  @override
  String get imageName;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
