// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_update_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentUpdateResponseModel _$CommentUpdateResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CommentUpdateResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CommentUpdateResponseModel {
  int get commentId => throw _privateConstructorUsedError;
  int get postId => throw _privateConstructorUsedError;
  String get creator => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentUpdateResponseModelCopyWith<CommentUpdateResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentUpdateResponseModelCopyWith<$Res> {
  factory $CommentUpdateResponseModelCopyWith(CommentUpdateResponseModel value,
          $Res Function(CommentUpdateResponseModel) then) =
      _$CommentUpdateResponseModelCopyWithImpl<$Res,
          CommentUpdateResponseModel>;
  @useResult
  $Res call(
      {int commentId,
      int postId,
      String creator,
      String content,
      String updatedAt});
}

/// @nodoc
class _$CommentUpdateResponseModelCopyWithImpl<$Res,
        $Val extends CommentUpdateResponseModel>
    implements $CommentUpdateResponseModelCopyWith<$Res> {
  _$CommentUpdateResponseModelCopyWithImpl(this._value, this._then);

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
    Object? updatedAt = null,
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
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentUpdateResponseModelImplCopyWith<$Res>
    implements $CommentUpdateResponseModelCopyWith<$Res> {
  factory _$$CommentUpdateResponseModelImplCopyWith(
          _$CommentUpdateResponseModelImpl value,
          $Res Function(_$CommentUpdateResponseModelImpl) then) =
      __$$CommentUpdateResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int commentId,
      int postId,
      String creator,
      String content,
      String updatedAt});
}

/// @nodoc
class __$$CommentUpdateResponseModelImplCopyWithImpl<$Res>
    extends _$CommentUpdateResponseModelCopyWithImpl<$Res,
        _$CommentUpdateResponseModelImpl>
    implements _$$CommentUpdateResponseModelImplCopyWith<$Res> {
  __$$CommentUpdateResponseModelImplCopyWithImpl(
      _$CommentUpdateResponseModelImpl _value,
      $Res Function(_$CommentUpdateResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
    Object? postId = null,
    Object? creator = null,
    Object? content = null,
    Object? updatedAt = null,
  }) {
    return _then(_$CommentUpdateResponseModelImpl(
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
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentUpdateResponseModelImpl implements _CommentUpdateResponseModel {
  const _$CommentUpdateResponseModelImpl(
      {required this.commentId,
      required this.postId,
      required this.creator,
      required this.content,
      required this.updatedAt});

  factory _$CommentUpdateResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CommentUpdateResponseModelImplFromJson(json);

  @override
  final int commentId;
  @override
  final int postId;
  @override
  final String creator;
  @override
  final String content;
  @override
  final String updatedAt;

  @override
  String toString() {
    return 'CommentUpdateResponseModel(commentId: $commentId, postId: $postId, creator: $creator, content: $content, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentUpdateResponseModelImpl &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, commentId, postId, creator, content, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentUpdateResponseModelImplCopyWith<_$CommentUpdateResponseModelImpl>
      get copyWith => __$$CommentUpdateResponseModelImplCopyWithImpl<
          _$CommentUpdateResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentUpdateResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CommentUpdateResponseModel
    implements CommentUpdateResponseModel {
  const factory _CommentUpdateResponseModel(
      {required final int commentId,
      required final int postId,
      required final String creator,
      required final String content,
      required final String updatedAt}) = _$CommentUpdateResponseModelImpl;

  factory _CommentUpdateResponseModel.fromJson(Map<String, dynamic> json) =
      _$CommentUpdateResponseModelImpl.fromJson;

  @override
  int get commentId;
  @override
  int get postId;
  @override
  String get creator;
  @override
  String get content;
  @override
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$CommentUpdateResponseModelImplCopyWith<_$CommentUpdateResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
