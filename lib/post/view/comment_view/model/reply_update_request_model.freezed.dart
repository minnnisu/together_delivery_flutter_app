// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reply_update_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReplyUpdateRequestModel _$ReplyUpdateRequestModelFromJson(
    Map<String, dynamic> json) {
  return _ReplyUpdateRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ReplyUpdateRequestModel {
  int get replyId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReplyUpdateRequestModelCopyWith<ReplyUpdateRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyUpdateRequestModelCopyWith<$Res> {
  factory $ReplyUpdateRequestModelCopyWith(ReplyUpdateRequestModel value,
          $Res Function(ReplyUpdateRequestModel) then) =
      _$ReplyUpdateRequestModelCopyWithImpl<$Res, ReplyUpdateRequestModel>;
  @useResult
  $Res call({int replyId, String content});
}

/// @nodoc
class _$ReplyUpdateRequestModelCopyWithImpl<$Res,
        $Val extends ReplyUpdateRequestModel>
    implements $ReplyUpdateRequestModelCopyWith<$Res> {
  _$ReplyUpdateRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replyId = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      replyId: null == replyId
          ? _value.replyId
          : replyId // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReplyUpdateRequestModelImplCopyWith<$Res>
    implements $ReplyUpdateRequestModelCopyWith<$Res> {
  factory _$$ReplyUpdateRequestModelImplCopyWith(
          _$ReplyUpdateRequestModelImpl value,
          $Res Function(_$ReplyUpdateRequestModelImpl) then) =
      __$$ReplyUpdateRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int replyId, String content});
}

/// @nodoc
class __$$ReplyUpdateRequestModelImplCopyWithImpl<$Res>
    extends _$ReplyUpdateRequestModelCopyWithImpl<$Res,
        _$ReplyUpdateRequestModelImpl>
    implements _$$ReplyUpdateRequestModelImplCopyWith<$Res> {
  __$$ReplyUpdateRequestModelImplCopyWithImpl(
      _$ReplyUpdateRequestModelImpl _value,
      $Res Function(_$ReplyUpdateRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replyId = null,
    Object? content = null,
  }) {
    return _then(_$ReplyUpdateRequestModelImpl(
      replyId: null == replyId
          ? _value.replyId
          : replyId // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReplyUpdateRequestModelImpl implements _ReplyUpdateRequestModel {
  const _$ReplyUpdateRequestModelImpl(
      {required this.replyId, required this.content});

  factory _$ReplyUpdateRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReplyUpdateRequestModelImplFromJson(json);

  @override
  final int replyId;
  @override
  final String content;

  @override
  String toString() {
    return 'ReplyUpdateRequestModel(replyId: $replyId, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplyUpdateRequestModelImpl &&
            (identical(other.replyId, replyId) || other.replyId == replyId) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, replyId, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplyUpdateRequestModelImplCopyWith<_$ReplyUpdateRequestModelImpl>
      get copyWith => __$$ReplyUpdateRequestModelImplCopyWithImpl<
          _$ReplyUpdateRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReplyUpdateRequestModelImplToJson(
      this,
    );
  }
}

abstract class _ReplyUpdateRequestModel implements ReplyUpdateRequestModel {
  const factory _ReplyUpdateRequestModel(
      {required final int replyId,
      required final String content}) = _$ReplyUpdateRequestModelImpl;

  factory _ReplyUpdateRequestModel.fromJson(Map<String, dynamic> json) =
      _$ReplyUpdateRequestModelImpl.fromJson;

  @override
  int get replyId;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$ReplyUpdateRequestModelImplCopyWith<_$ReplyUpdateRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
