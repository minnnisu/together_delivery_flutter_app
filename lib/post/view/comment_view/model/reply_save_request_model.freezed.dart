// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reply_save_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReplySaveRequestModel _$ReplySaveRequestModelFromJson(
    Map<String, dynamic> json) {
  return _ReplySaveRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ReplySaveRequestModel {
  int get commentId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReplySaveRequestModelCopyWith<ReplySaveRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplySaveRequestModelCopyWith<$Res> {
  factory $ReplySaveRequestModelCopyWith(ReplySaveRequestModel value,
          $Res Function(ReplySaveRequestModel) then) =
      _$ReplySaveRequestModelCopyWithImpl<$Res, ReplySaveRequestModel>;
  @useResult
  $Res call({int commentId, String content});
}

/// @nodoc
class _$ReplySaveRequestModelCopyWithImpl<$Res,
        $Val extends ReplySaveRequestModel>
    implements $ReplySaveRequestModelCopyWith<$Res> {
  _$ReplySaveRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReplySaveRequestModelImplCopyWith<$Res>
    implements $ReplySaveRequestModelCopyWith<$Res> {
  factory _$$ReplySaveRequestModelImplCopyWith(
          _$ReplySaveRequestModelImpl value,
          $Res Function(_$ReplySaveRequestModelImpl) then) =
      __$$ReplySaveRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int commentId, String content});
}

/// @nodoc
class __$$ReplySaveRequestModelImplCopyWithImpl<$Res>
    extends _$ReplySaveRequestModelCopyWithImpl<$Res,
        _$ReplySaveRequestModelImpl>
    implements _$$ReplySaveRequestModelImplCopyWith<$Res> {
  __$$ReplySaveRequestModelImplCopyWithImpl(_$ReplySaveRequestModelImpl _value,
      $Res Function(_$ReplySaveRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
    Object? content = null,
  }) {
    return _then(_$ReplySaveRequestModelImpl(
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
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
class _$ReplySaveRequestModelImpl implements _ReplySaveRequestModel {
  const _$ReplySaveRequestModelImpl(
      {required this.commentId, required this.content});

  factory _$ReplySaveRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReplySaveRequestModelImplFromJson(json);

  @override
  final int commentId;
  @override
  final String content;

  @override
  String toString() {
    return 'ReplySaveRequestModel(commentId: $commentId, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplySaveRequestModelImpl &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, commentId, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplySaveRequestModelImplCopyWith<_$ReplySaveRequestModelImpl>
      get copyWith => __$$ReplySaveRequestModelImplCopyWithImpl<
          _$ReplySaveRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReplySaveRequestModelImplToJson(
      this,
    );
  }
}

abstract class _ReplySaveRequestModel implements ReplySaveRequestModel {
  const factory _ReplySaveRequestModel(
      {required final int commentId,
      required final String content}) = _$ReplySaveRequestModelImpl;

  factory _ReplySaveRequestModel.fromJson(Map<String, dynamic> json) =
      _$ReplySaveRequestModelImpl.fromJson;

  @override
  int get commentId;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$ReplySaveRequestModelImplCopyWith<_$ReplySaveRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
