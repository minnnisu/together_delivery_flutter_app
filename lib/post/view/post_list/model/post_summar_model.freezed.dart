// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_summar_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostSummaryModel _$PostSummaryModelFromJson(Map<String, dynamic> json) {
  return _PostSummaryModel.fromJson(json);
}

/// @nodoc
mixin _$PostSummaryModel {
  int get id => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get categoryCode => throw _privateConstructorUsedError;
  int get deliveryFee => throw _privateConstructorUsedError;
  int get minOrderFee => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostSummaryModelCopyWith<PostSummaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostSummaryModelCopyWith<$Res> {
  factory $PostSummaryModelCopyWith(
          PostSummaryModel value, $Res Function(PostSummaryModel) then) =
      _$PostSummaryModelCopyWithImpl<$Res, PostSummaryModel>;
  @useResult
  $Res call(
      {int id,
      String nickname,
      String content,
      String categoryCode,
      int deliveryFee,
      int minOrderFee,
      bool status,
      String createdAt});
}

/// @nodoc
class _$PostSummaryModelCopyWithImpl<$Res, $Val extends PostSummaryModel>
    implements $PostSummaryModelCopyWith<$Res> {
  _$PostSummaryModelCopyWithImpl(this._value, this._then);

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
    Object? categoryCode = null,
    Object? deliveryFee = null,
    Object? minOrderFee = null,
    Object? status = null,
    Object? createdAt = null,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostSummaryModelImplCopyWith<$Res>
    implements $PostSummaryModelCopyWith<$Res> {
  factory _$$PostSummaryModelImplCopyWith(_$PostSummaryModelImpl value,
          $Res Function(_$PostSummaryModelImpl) then) =
      __$$PostSummaryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String nickname,
      String content,
      String categoryCode,
      int deliveryFee,
      int minOrderFee,
      bool status,
      String createdAt});
}

/// @nodoc
class __$$PostSummaryModelImplCopyWithImpl<$Res>
    extends _$PostSummaryModelCopyWithImpl<$Res, _$PostSummaryModelImpl>
    implements _$$PostSummaryModelImplCopyWith<$Res> {
  __$$PostSummaryModelImplCopyWithImpl(_$PostSummaryModelImpl _value,
      $Res Function(_$PostSummaryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
    Object? content = null,
    Object? categoryCode = null,
    Object? deliveryFee = null,
    Object? minOrderFee = null,
    Object? status = null,
    Object? createdAt = null,
  }) {
    return _then(_$PostSummaryModelImpl(
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostSummaryModelImpl
    with DiagnosticableTreeMixin
    implements _PostSummaryModel {
  const _$PostSummaryModelImpl(
      {required this.id,
      required this.nickname,
      required this.content,
      required this.categoryCode,
      required this.deliveryFee,
      required this.minOrderFee,
      required this.status,
      required this.createdAt});

  factory _$PostSummaryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostSummaryModelImplFromJson(json);

  @override
  final int id;
  @override
  final String nickname;
  @override
  final String content;
  @override
  final String categoryCode;
  @override
  final int deliveryFee;
  @override
  final int minOrderFee;
  @override
  final bool status;
  @override
  final String createdAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostSummaryModel(id: $id, nickname: $nickname, content: $content, categoryCode: $categoryCode, deliveryFee: $deliveryFee, minOrderFee: $minOrderFee, status: $status, createdAt: $createdAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostSummaryModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('nickname', nickname))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('categoryCode', categoryCode))
      ..add(DiagnosticsProperty('deliveryFee', deliveryFee))
      ..add(DiagnosticsProperty('minOrderFee', minOrderFee))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('createdAt', createdAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostSummaryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.categoryCode, categoryCode) ||
                other.categoryCode == categoryCode) &&
            (identical(other.deliveryFee, deliveryFee) ||
                other.deliveryFee == deliveryFee) &&
            (identical(other.minOrderFee, minOrderFee) ||
                other.minOrderFee == minOrderFee) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, nickname, content,
      categoryCode, deliveryFee, minOrderFee, status, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostSummaryModelImplCopyWith<_$PostSummaryModelImpl> get copyWith =>
      __$$PostSummaryModelImplCopyWithImpl<_$PostSummaryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostSummaryModelImplToJson(
      this,
    );
  }
}

abstract class _PostSummaryModel implements PostSummaryModel {
  const factory _PostSummaryModel(
      {required final int id,
      required final String nickname,
      required final String content,
      required final String categoryCode,
      required final int deliveryFee,
      required final int minOrderFee,
      required final bool status,
      required final String createdAt}) = _$PostSummaryModelImpl;

  factory _PostSummaryModel.fromJson(Map<String, dynamic> json) =
      _$PostSummaryModelImpl.fromJson;

  @override
  int get id;
  @override
  String get nickname;
  @override
  String get content;
  @override
  String get categoryCode;
  @override
  int get deliveryFee;
  @override
  int get minOrderFee;
  @override
  bool get status;
  @override
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$PostSummaryModelImplCopyWith<_$PostSummaryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
