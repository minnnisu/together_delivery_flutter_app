// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reply_save_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReplySaveResponseModel _$ReplySaveResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ReplySaveResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ReplySaveResponseModel {
  int get replyId => throw _privateConstructorUsedError;
  int get commentId => throw _privateConstructorUsedError;
  String get creator => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReplySaveResponseModelCopyWith<ReplySaveResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplySaveResponseModelCopyWith<$Res> {
  factory $ReplySaveResponseModelCopyWith(ReplySaveResponseModel value,
          $Res Function(ReplySaveResponseModel) then) =
      _$ReplySaveResponseModelCopyWithImpl<$Res, ReplySaveResponseModel>;
  @useResult
  $Res call(
      {int replyId,
      int commentId,
      String creator,
      String content,
      String createdAt});
}

/// @nodoc
class _$ReplySaveResponseModelCopyWithImpl<$Res,
        $Val extends ReplySaveResponseModel>
    implements $ReplySaveResponseModelCopyWith<$Res> {
  _$ReplySaveResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replyId = null,
    Object? commentId = null,
    Object? creator = null,
    Object? content = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      replyId: null == replyId
          ? _value.replyId
          : replyId // ignore: cast_nullable_to_non_nullable
              as int,
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as int,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReplySaveResponseModelImplCopyWith<$Res>
    implements $ReplySaveResponseModelCopyWith<$Res> {
  factory _$$ReplySaveResponseModelImplCopyWith(
          _$ReplySaveResponseModelImpl value,
          $Res Function(_$ReplySaveResponseModelImpl) then) =
      __$$ReplySaveResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int replyId,
      int commentId,
      String creator,
      String content,
      String createdAt});
}

/// @nodoc
class __$$ReplySaveResponseModelImplCopyWithImpl<$Res>
    extends _$ReplySaveResponseModelCopyWithImpl<$Res,
        _$ReplySaveResponseModelImpl>
    implements _$$ReplySaveResponseModelImplCopyWith<$Res> {
  __$$ReplySaveResponseModelImplCopyWithImpl(
      _$ReplySaveResponseModelImpl _value,
      $Res Function(_$ReplySaveResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replyId = null,
    Object? commentId = null,
    Object? creator = null,
    Object? content = null,
    Object? createdAt = null,
  }) {
    return _then(_$ReplySaveResponseModelImpl(
      replyId: null == replyId
          ? _value.replyId
          : replyId // ignore: cast_nullable_to_non_nullable
              as int,
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as int,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReplySaveResponseModelImpl implements _ReplySaveResponseModel {
  const _$ReplySaveResponseModelImpl(
      {required this.replyId,
      required this.commentId,
      required this.creator,
      required this.content,
      required this.createdAt});

  factory _$ReplySaveResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReplySaveResponseModelImplFromJson(json);

  @override
  final int replyId;
  @override
  final int commentId;
  @override
  final String creator;
  @override
  final String content;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'ReplySaveResponseModel(replyId: $replyId, commentId: $commentId, creator: $creator, content: $content, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplySaveResponseModelImpl &&
            (identical(other.replyId, replyId) || other.replyId == replyId) &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, replyId, commentId, creator, content, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplySaveResponseModelImplCopyWith<_$ReplySaveResponseModelImpl>
      get copyWith => __$$ReplySaveResponseModelImplCopyWithImpl<
          _$ReplySaveResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReplySaveResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ReplySaveResponseModel implements ReplySaveResponseModel {
  const factory _ReplySaveResponseModel(
      {required final int replyId,
      required final int commentId,
      required final String creator,
      required final String content,
      required final String createdAt}) = _$ReplySaveResponseModelImpl;

  factory _ReplySaveResponseModel.fromJson(Map<String, dynamic> json) =
      _$ReplySaveResponseModelImpl.fromJson;

  @override
  int get replyId;
  @override
  int get commentId;
  @override
  String get creator;
  @override
  String get content;
  @override
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$ReplySaveResponseModelImplCopyWith<_$ReplySaveResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
