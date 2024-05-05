// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reply_delete_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReplyDeleteResponseModel _$ReplyDeleteResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ReplyDeleteResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ReplyDeleteResponseModel {
  int get replyId => throw _privateConstructorUsedError;
  int get commentId => throw _privateConstructorUsedError;
  String get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReplyDeleteResponseModelCopyWith<ReplyDeleteResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyDeleteResponseModelCopyWith<$Res> {
  factory $ReplyDeleteResponseModelCopyWith(ReplyDeleteResponseModel value,
          $Res Function(ReplyDeleteResponseModel) then) =
      _$ReplyDeleteResponseModelCopyWithImpl<$Res, ReplyDeleteResponseModel>;
  @useResult
  $Res call({int replyId, int commentId, String deletedAt});
}

/// @nodoc
class _$ReplyDeleteResponseModelCopyWithImpl<$Res,
        $Val extends ReplyDeleteResponseModel>
    implements $ReplyDeleteResponseModelCopyWith<$Res> {
  _$ReplyDeleteResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replyId = null,
    Object? commentId = null,
    Object? deletedAt = null,
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
      deletedAt: null == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReplyDeleteResponseModelImplCopyWith<$Res>
    implements $ReplyDeleteResponseModelCopyWith<$Res> {
  factory _$$ReplyDeleteResponseModelImplCopyWith(
          _$ReplyDeleteResponseModelImpl value,
          $Res Function(_$ReplyDeleteResponseModelImpl) then) =
      __$$ReplyDeleteResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int replyId, int commentId, String deletedAt});
}

/// @nodoc
class __$$ReplyDeleteResponseModelImplCopyWithImpl<$Res>
    extends _$ReplyDeleteResponseModelCopyWithImpl<$Res,
        _$ReplyDeleteResponseModelImpl>
    implements _$$ReplyDeleteResponseModelImplCopyWith<$Res> {
  __$$ReplyDeleteResponseModelImplCopyWithImpl(
      _$ReplyDeleteResponseModelImpl _value,
      $Res Function(_$ReplyDeleteResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replyId = null,
    Object? commentId = null,
    Object? deletedAt = null,
  }) {
    return _then(_$ReplyDeleteResponseModelImpl(
      replyId: null == replyId
          ? _value.replyId
          : replyId // ignore: cast_nullable_to_non_nullable
              as int,
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as int,
      deletedAt: null == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReplyDeleteResponseModelImpl implements _ReplyDeleteResponseModel {
  const _$ReplyDeleteResponseModelImpl(
      {required this.replyId,
      required this.commentId,
      required this.deletedAt});

  factory _$ReplyDeleteResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReplyDeleteResponseModelImplFromJson(json);

  @override
  final int replyId;
  @override
  final int commentId;
  @override
  final String deletedAt;

  @override
  String toString() {
    return 'ReplyDeleteResponseModel(replyId: $replyId, commentId: $commentId, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplyDeleteResponseModelImpl &&
            (identical(other.replyId, replyId) || other.replyId == replyId) &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, replyId, commentId, deletedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplyDeleteResponseModelImplCopyWith<_$ReplyDeleteResponseModelImpl>
      get copyWith => __$$ReplyDeleteResponseModelImplCopyWithImpl<
          _$ReplyDeleteResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReplyDeleteResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ReplyDeleteResponseModel implements ReplyDeleteResponseModel {
  const factory _ReplyDeleteResponseModel(
      {required final int replyId,
      required final int commentId,
      required final String deletedAt}) = _$ReplyDeleteResponseModelImpl;

  factory _ReplyDeleteResponseModel.fromJson(Map<String, dynamic> json) =
      _$ReplyDeleteResponseModelImpl.fromJson;

  @override
  int get replyId;
  @override
  int get commentId;
  @override
  String get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$$ReplyDeleteResponseModelImplCopyWith<_$ReplyDeleteResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
