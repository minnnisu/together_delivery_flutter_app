// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_save_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentSaveResponseModel _$CommentSaveResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CommentSaveResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CommentSaveResponseModel {
  int get commentId => throw _privateConstructorUsedError;
  int get postId => throw _privateConstructorUsedError;
  String get creator => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentSaveResponseModelCopyWith<CommentSaveResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentSaveResponseModelCopyWith<$Res> {
  factory $CommentSaveResponseModelCopyWith(CommentSaveResponseModel value,
          $Res Function(CommentSaveResponseModel) then) =
      _$CommentSaveResponseModelCopyWithImpl<$Res, CommentSaveResponseModel>;
  @useResult
  $Res call(
      {int commentId,
      int postId,
      String creator,
      String content,
      String createdAt});
}

/// @nodoc
class _$CommentSaveResponseModelCopyWithImpl<$Res,
        $Val extends CommentSaveResponseModel>
    implements $CommentSaveResponseModelCopyWith<$Res> {
  _$CommentSaveResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
    Object? postId = null,
    Object? creator = null,
    Object? content = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as int,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$CommentSaveResponseModelImplCopyWith<$Res>
    implements $CommentSaveResponseModelCopyWith<$Res> {
  factory _$$CommentSaveResponseModelImplCopyWith(
          _$CommentSaveResponseModelImpl value,
          $Res Function(_$CommentSaveResponseModelImpl) then) =
      __$$CommentSaveResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int commentId,
      int postId,
      String creator,
      String content,
      String createdAt});
}

/// @nodoc
class __$$CommentSaveResponseModelImplCopyWithImpl<$Res>
    extends _$CommentSaveResponseModelCopyWithImpl<$Res,
        _$CommentSaveResponseModelImpl>
    implements _$$CommentSaveResponseModelImplCopyWith<$Res> {
  __$$CommentSaveResponseModelImplCopyWithImpl(
      _$CommentSaveResponseModelImpl _value,
      $Res Function(_$CommentSaveResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
    Object? postId = null,
    Object? creator = null,
    Object? content = null,
    Object? createdAt = null,
  }) {
    return _then(_$CommentSaveResponseModelImpl(
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as int,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
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
class _$CommentSaveResponseModelImpl implements _CommentSaveResponseModel {
  const _$CommentSaveResponseModelImpl(
      {required this.commentId,
      required this.postId,
      required this.creator,
      required this.content,
      required this.createdAt});

  factory _$CommentSaveResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentSaveResponseModelImplFromJson(json);

  @override
  final int commentId;
  @override
  final int postId;
  @override
  final String creator;
  @override
  final String content;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'CommentSaveResponseModel(commentId: $commentId, postId: $postId, creator: $creator, content: $content, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentSaveResponseModelImpl &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, commentId, postId, creator, content, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentSaveResponseModelImplCopyWith<_$CommentSaveResponseModelImpl>
      get copyWith => __$$CommentSaveResponseModelImplCopyWithImpl<
          _$CommentSaveResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentSaveResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CommentSaveResponseModel implements CommentSaveResponseModel {
  const factory _CommentSaveResponseModel(
      {required final int commentId,
      required final int postId,
      required final String creator,
      required final String content,
      required final String createdAt}) = _$CommentSaveResponseModelImpl;

  factory _CommentSaveResponseModel.fromJson(Map<String, dynamic> json) =
      _$CommentSaveResponseModelImpl.fromJson;

  @override
  int get commentId;
  @override
  int get postId;
  @override
  String get creator;
  @override
  String get content;
  @override
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$CommentSaveResponseModelImplCopyWith<_$CommentSaveResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
