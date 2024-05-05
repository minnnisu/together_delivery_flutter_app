// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_delete_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentDeleteResponseModel _$CommentDeleteResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CommentDeleteResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CommentDeleteResponseModel {
  int get commentId => throw _privateConstructorUsedError;
  int get postId => throw _privateConstructorUsedError;
  String get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentDeleteResponseModelCopyWith<CommentDeleteResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentDeleteResponseModelCopyWith<$Res> {
  factory $CommentDeleteResponseModelCopyWith(CommentDeleteResponseModel value,
          $Res Function(CommentDeleteResponseModel) then) =
      _$CommentDeleteResponseModelCopyWithImpl<$Res,
          CommentDeleteResponseModel>;
  @useResult
  $Res call({int commentId, int postId, String deletedAt});
}

/// @nodoc
class _$CommentDeleteResponseModelCopyWithImpl<$Res,
        $Val extends CommentDeleteResponseModel>
    implements $CommentDeleteResponseModelCopyWith<$Res> {
  _$CommentDeleteResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
    Object? postId = null,
    Object? deletedAt = null,
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
      deletedAt: null == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentDeleteResponseModelImplCopyWith<$Res>
    implements $CommentDeleteResponseModelCopyWith<$Res> {
  factory _$$CommentDeleteResponseModelImplCopyWith(
          _$CommentDeleteResponseModelImpl value,
          $Res Function(_$CommentDeleteResponseModelImpl) then) =
      __$$CommentDeleteResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int commentId, int postId, String deletedAt});
}

/// @nodoc
class __$$CommentDeleteResponseModelImplCopyWithImpl<$Res>
    extends _$CommentDeleteResponseModelCopyWithImpl<$Res,
        _$CommentDeleteResponseModelImpl>
    implements _$$CommentDeleteResponseModelImplCopyWith<$Res> {
  __$$CommentDeleteResponseModelImplCopyWithImpl(
      _$CommentDeleteResponseModelImpl _value,
      $Res Function(_$CommentDeleteResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
    Object? postId = null,
    Object? deletedAt = null,
  }) {
    return _then(_$CommentDeleteResponseModelImpl(
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as int,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
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
class _$CommentDeleteResponseModelImpl implements _CommentDeleteResponseModel {
  const _$CommentDeleteResponseModelImpl(
      {required this.commentId, required this.postId, required this.deletedAt});

  factory _$CommentDeleteResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CommentDeleteResponseModelImplFromJson(json);

  @override
  final int commentId;
  @override
  final int postId;
  @override
  final String deletedAt;

  @override
  String toString() {
    return 'CommentDeleteResponseModel(commentId: $commentId, postId: $postId, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentDeleteResponseModelImpl &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, commentId, postId, deletedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentDeleteResponseModelImplCopyWith<_$CommentDeleteResponseModelImpl>
      get copyWith => __$$CommentDeleteResponseModelImplCopyWithImpl<
          _$CommentDeleteResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentDeleteResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CommentDeleteResponseModel
    implements CommentDeleteResponseModel {
  const factory _CommentDeleteResponseModel(
      {required final int commentId,
      required final int postId,
      required final String deletedAt}) = _$CommentDeleteResponseModelImpl;

  factory _CommentDeleteResponseModel.fromJson(Map<String, dynamic> json) =
      _$CommentDeleteResponseModelImpl.fromJson;

  @override
  int get commentId;
  @override
  int get postId;
  @override
  String get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$$CommentDeleteResponseModelImplCopyWith<_$CommentDeleteResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
