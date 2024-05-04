// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reply_update_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReplyUpdateResponseModel _$ReplyUpdateResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ReplyUpdateResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ReplyUpdateResponseModel {
  int get replyId => throw _privateConstructorUsedError;
  int get commentId => throw _privateConstructorUsedError;
  String get creator => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReplyUpdateResponseModelCopyWith<ReplyUpdateResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyUpdateResponseModelCopyWith<$Res> {
  factory $ReplyUpdateResponseModelCopyWith(ReplyUpdateResponseModel value,
          $Res Function(ReplyUpdateResponseModel) then) =
      _$ReplyUpdateResponseModelCopyWithImpl<$Res, ReplyUpdateResponseModel>;
  @useResult
  $Res call(
      {int replyId,
      int commentId,
      String creator,
      String content,
      String updatedAt});
}

/// @nodoc
class _$ReplyUpdateResponseModelCopyWithImpl<$Res,
        $Val extends ReplyUpdateResponseModel>
    implements $ReplyUpdateResponseModelCopyWith<$Res> {
  _$ReplyUpdateResponseModelCopyWithImpl(this._value, this._then);

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
    Object? updatedAt = null,
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
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReplyUpdateResponseModelImplCopyWith<$Res>
    implements $ReplyUpdateResponseModelCopyWith<$Res> {
  factory _$$ReplyUpdateResponseModelImplCopyWith(
          _$ReplyUpdateResponseModelImpl value,
          $Res Function(_$ReplyUpdateResponseModelImpl) then) =
      __$$ReplyUpdateResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int replyId,
      int commentId,
      String creator,
      String content,
      String updatedAt});
}

/// @nodoc
class __$$ReplyUpdateResponseModelImplCopyWithImpl<$Res>
    extends _$ReplyUpdateResponseModelCopyWithImpl<$Res,
        _$ReplyUpdateResponseModelImpl>
    implements _$$ReplyUpdateResponseModelImplCopyWith<$Res> {
  __$$ReplyUpdateResponseModelImplCopyWithImpl(
      _$ReplyUpdateResponseModelImpl _value,
      $Res Function(_$ReplyUpdateResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replyId = null,
    Object? commentId = null,
    Object? creator = null,
    Object? content = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ReplyUpdateResponseModelImpl(
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
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReplyUpdateResponseModelImpl implements _ReplyUpdateResponseModel {
  const _$ReplyUpdateResponseModelImpl(
      {required this.replyId,
      required this.commentId,
      required this.creator,
      required this.content,
      required this.updatedAt});

  factory _$ReplyUpdateResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReplyUpdateResponseModelImplFromJson(json);

  @override
  final int replyId;
  @override
  final int commentId;
  @override
  final String creator;
  @override
  final String content;
  @override
  final String updatedAt;

  @override
  String toString() {
    return 'ReplyUpdateResponseModel(replyId: $replyId, commentId: $commentId, creator: $creator, content: $content, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplyUpdateResponseModelImpl &&
            (identical(other.replyId, replyId) || other.replyId == replyId) &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, replyId, commentId, creator, content, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplyUpdateResponseModelImplCopyWith<_$ReplyUpdateResponseModelImpl>
      get copyWith => __$$ReplyUpdateResponseModelImplCopyWithImpl<
          _$ReplyUpdateResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReplyUpdateResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ReplyUpdateResponseModel implements ReplyUpdateResponseModel {
  const factory _ReplyUpdateResponseModel(
      {required final int replyId,
      required final int commentId,
      required final String creator,
      required final String content,
      required final String updatedAt}) = _$ReplyUpdateResponseModelImpl;

  factory _ReplyUpdateResponseModel.fromJson(Map<String, dynamic> json) =
      _$ReplyUpdateResponseModelImpl.fromJson;

  @override
  int get replyId;
  @override
  int get commentId;
  @override
  String get creator;
  @override
  String get content;
  @override
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ReplyUpdateResponseModelImplCopyWith<_$ReplyUpdateResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
