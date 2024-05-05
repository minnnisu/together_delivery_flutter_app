// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_update_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentUpdateRequestModel _$CommentUpdateRequestModelFromJson(
    Map<String, dynamic> json) {
  return _CommentUpdateRequestModel.fromJson(json);
}

/// @nodoc
mixin _$CommentUpdateRequestModel {
  int get commentId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentUpdateRequestModelCopyWith<CommentUpdateRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentUpdateRequestModelCopyWith<$Res> {
  factory $CommentUpdateRequestModelCopyWith(CommentUpdateRequestModel value,
          $Res Function(CommentUpdateRequestModel) then) =
      _$CommentUpdateRequestModelCopyWithImpl<$Res, CommentUpdateRequestModel>;
  @useResult
  $Res call({int commentId, String content});
}

/// @nodoc
class _$CommentUpdateRequestModelCopyWithImpl<$Res,
        $Val extends CommentUpdateRequestModel>
    implements $CommentUpdateRequestModelCopyWith<$Res> {
  _$CommentUpdateRequestModelCopyWithImpl(this._value, this._then);

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
abstract class _$$CommentUpdateRequestModelImplCopyWith<$Res>
    implements $CommentUpdateRequestModelCopyWith<$Res> {
  factory _$$CommentUpdateRequestModelImplCopyWith(
          _$CommentUpdateRequestModelImpl value,
          $Res Function(_$CommentUpdateRequestModelImpl) then) =
      __$$CommentUpdateRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int commentId, String content});
}

/// @nodoc
class __$$CommentUpdateRequestModelImplCopyWithImpl<$Res>
    extends _$CommentUpdateRequestModelCopyWithImpl<$Res,
        _$CommentUpdateRequestModelImpl>
    implements _$$CommentUpdateRequestModelImplCopyWith<$Res> {
  __$$CommentUpdateRequestModelImplCopyWithImpl(
      _$CommentUpdateRequestModelImpl _value,
      $Res Function(_$CommentUpdateRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
    Object? content = null,
  }) {
    return _then(_$CommentUpdateRequestModelImpl(
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
class _$CommentUpdateRequestModelImpl implements _CommentUpdateRequestModel {
  const _$CommentUpdateRequestModelImpl(
      {required this.commentId, required this.content});

  factory _$CommentUpdateRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentUpdateRequestModelImplFromJson(json);

  @override
  final int commentId;
  @override
  final String content;

  @override
  String toString() {
    return 'CommentUpdateRequestModel(commentId: $commentId, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentUpdateRequestModelImpl &&
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
  _$$CommentUpdateRequestModelImplCopyWith<_$CommentUpdateRequestModelImpl>
      get copyWith => __$$CommentUpdateRequestModelImplCopyWithImpl<
          _$CommentUpdateRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentUpdateRequestModelImplToJson(
      this,
    );
  }
}

abstract class _CommentUpdateRequestModel implements CommentUpdateRequestModel {
  const factory _CommentUpdateRequestModel(
      {required final int commentId,
      required final String content}) = _$CommentUpdateRequestModelImpl;

  factory _CommentUpdateRequestModel.fromJson(Map<String, dynamic> json) =
      _$CommentUpdateRequestModelImpl.fromJson;

  @override
  int get commentId;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$CommentUpdateRequestModelImplCopyWith<_$CommentUpdateRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
