// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_save_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentSaveRequestModel _$CommentSaveRequestModelFromJson(
    Map<String, dynamic> json) {
  return _CommentSaveRequestModel.fromJson(json);
}

/// @nodoc
mixin _$CommentSaveRequestModel {
  int get postId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentSaveRequestModelCopyWith<CommentSaveRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentSaveRequestModelCopyWith<$Res> {
  factory $CommentSaveRequestModelCopyWith(CommentSaveRequestModel value,
          $Res Function(CommentSaveRequestModel) then) =
      _$CommentSaveRequestModelCopyWithImpl<$Res, CommentSaveRequestModel>;
  @useResult
  $Res call({int postId, String content});
}

/// @nodoc
class _$CommentSaveRequestModelCopyWithImpl<$Res,
        $Val extends CommentSaveRequestModel>
    implements $CommentSaveRequestModelCopyWith<$Res> {
  _$CommentSaveRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentSaveRequestModelImplCopyWith<$Res>
    implements $CommentSaveRequestModelCopyWith<$Res> {
  factory _$$CommentSaveRequestModelImplCopyWith(
          _$CommentSaveRequestModelImpl value,
          $Res Function(_$CommentSaveRequestModelImpl) then) =
      __$$CommentSaveRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int postId, String content});
}

/// @nodoc
class __$$CommentSaveRequestModelImplCopyWithImpl<$Res>
    extends _$CommentSaveRequestModelCopyWithImpl<$Res,
        _$CommentSaveRequestModelImpl>
    implements _$$CommentSaveRequestModelImplCopyWith<$Res> {
  __$$CommentSaveRequestModelImplCopyWithImpl(
      _$CommentSaveRequestModelImpl _value,
      $Res Function(_$CommentSaveRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? content = null,
  }) {
    return _then(_$CommentSaveRequestModelImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
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
class _$CommentSaveRequestModelImpl implements _CommentSaveRequestModel {
  const _$CommentSaveRequestModelImpl(
      {required this.postId, required this.content});

  factory _$CommentSaveRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentSaveRequestModelImplFromJson(json);

  @override
  final int postId;
  @override
  final String content;

  @override
  String toString() {
    return 'CommentSaveRequestModel(postId: $postId, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentSaveRequestModelImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, postId, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentSaveRequestModelImplCopyWith<_$CommentSaveRequestModelImpl>
      get copyWith => __$$CommentSaveRequestModelImplCopyWithImpl<
          _$CommentSaveRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentSaveRequestModelImplToJson(
      this,
    );
  }
}

abstract class _CommentSaveRequestModel implements CommentSaveRequestModel {
  const factory _CommentSaveRequestModel(
      {required final int postId,
      required final String content}) = _$CommentSaveRequestModelImpl;

  factory _CommentSaveRequestModel.fromJson(Map<String, dynamic> json) =
      _$CommentSaveRequestModelImpl.fromJson;

  @override
  int get postId;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$CommentSaveRequestModelImplCopyWith<_$CommentSaveRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
