// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_common_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentBody _$CommentBodyFromJson(Map<String, dynamic> json) {
  return _CommentBody.fromJson(json);
}

/// @nodoc
mixin _$CommentBody {
  int get commentId => throw _privateConstructorUsedError;
  int? get postId => throw _privateConstructorUsedError;
  String get creator => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  dynamic get deletedAt => throw _privateConstructorUsedError;
  int? get replyId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentBodyCopyWith<CommentBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentBodyCopyWith<$Res> {
  factory $CommentBodyCopyWith(
          CommentBody value, $Res Function(CommentBody) then) =
      _$CommentBodyCopyWithImpl<$Res, CommentBody>;
  @useResult
  $Res call(
      {int commentId,
      int? postId,
      String creator,
      String content,
      String createdAt,
      String updatedAt,
      dynamic deletedAt,
      int? replyId});
}

/// @nodoc
class _$CommentBodyCopyWithImpl<$Res, $Val extends CommentBody>
    implements $CommentBodyCopyWith<$Res> {
  _$CommentBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
    Object? postId = freezed,
    Object? creator = null,
    Object? content = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
    Object? replyId = freezed,
  }) {
    return _then(_value.copyWith(
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as int,
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      replyId: freezed == replyId
          ? _value.replyId
          : replyId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentBodyImplCopyWith<$Res>
    implements $CommentBodyCopyWith<$Res> {
  factory _$$CommentBodyImplCopyWith(
          _$CommentBodyImpl value, $Res Function(_$CommentBodyImpl) then) =
      __$$CommentBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int commentId,
      int? postId,
      String creator,
      String content,
      String createdAt,
      String updatedAt,
      dynamic deletedAt,
      int? replyId});
}

/// @nodoc
class __$$CommentBodyImplCopyWithImpl<$Res>
    extends _$CommentBodyCopyWithImpl<$Res, _$CommentBodyImpl>
    implements _$$CommentBodyImplCopyWith<$Res> {
  __$$CommentBodyImplCopyWithImpl(
      _$CommentBodyImpl _value, $Res Function(_$CommentBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
    Object? postId = freezed,
    Object? creator = null,
    Object? content = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
    Object? replyId = freezed,
  }) {
    return _then(_$CommentBodyImpl(
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as int,
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      replyId: freezed == replyId
          ? _value.replyId
          : replyId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentBodyImpl implements _CommentBody {
  const _$CommentBodyImpl(
      {required this.commentId,
      this.postId,
      required this.creator,
      required this.content,
      required this.createdAt,
      required this.updatedAt,
      required this.deletedAt,
      this.replyId});

  factory _$CommentBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentBodyImplFromJson(json);

  @override
  final int commentId;
  @override
  final int? postId;
  @override
  final String creator;
  @override
  final String content;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final dynamic deletedAt;
  @override
  final int? replyId;

  @override
  String toString() {
    return 'CommentBody(commentId: $commentId, postId: $postId, creator: $creator, content: $content, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, replyId: $replyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentBodyImpl &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            (identical(other.replyId, replyId) || other.replyId == replyId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      commentId,
      postId,
      creator,
      content,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(deletedAt),
      replyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentBodyImplCopyWith<_$CommentBodyImpl> get copyWith =>
      __$$CommentBodyImplCopyWithImpl<_$CommentBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentBodyImplToJson(
      this,
    );
  }
}

abstract class _CommentBody implements CommentBody {
  const factory _CommentBody(
      {required final int commentId,
      final int? postId,
      required final String creator,
      required final String content,
      required final String createdAt,
      required final String updatedAt,
      required final dynamic deletedAt,
      final int? replyId}) = _$CommentBodyImpl;

  factory _CommentBody.fromJson(Map<String, dynamic> json) =
      _$CommentBodyImpl.fromJson;

  @override
  int get commentId;
  @override
  int? get postId;
  @override
  String get creator;
  @override
  String get content;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  dynamic get deletedAt;
  @override
  int? get replyId;
  @override
  @JsonKey(ignore: true)
  _$$CommentBodyImplCopyWith<_$CommentBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReplyBody _$ReplyBodyFromJson(Map<String, dynamic> json) {
  return _ReplyBody.fromJson(json);
}

/// @nodoc
mixin _$ReplyBody {
  int get commentId => throw _privateConstructorUsedError;
  int? get postId => throw _privateConstructorUsedError;
  String get creator => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  dynamic get deletedAt => throw _privateConstructorUsedError;
  int? get replyId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReplyBodyCopyWith<ReplyBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyBodyCopyWith<$Res> {
  factory $ReplyBodyCopyWith(ReplyBody value, $Res Function(ReplyBody) then) =
      _$ReplyBodyCopyWithImpl<$Res, ReplyBody>;
  @useResult
  $Res call(
      {int commentId,
      int? postId,
      String creator,
      String content,
      String createdAt,
      String updatedAt,
      dynamic deletedAt,
      int? replyId});
}

/// @nodoc
class _$ReplyBodyCopyWithImpl<$Res, $Val extends ReplyBody>
    implements $ReplyBodyCopyWith<$Res> {
  _$ReplyBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
    Object? postId = freezed,
    Object? creator = null,
    Object? content = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
    Object? replyId = freezed,
  }) {
    return _then(_value.copyWith(
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as int,
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      replyId: freezed == replyId
          ? _value.replyId
          : replyId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReplyBodyImplCopyWith<$Res>
    implements $ReplyBodyCopyWith<$Res> {
  factory _$$ReplyBodyImplCopyWith(
          _$ReplyBodyImpl value, $Res Function(_$ReplyBodyImpl) then) =
      __$$ReplyBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int commentId,
      int? postId,
      String creator,
      String content,
      String createdAt,
      String updatedAt,
      dynamic deletedAt,
      int? replyId});
}

/// @nodoc
class __$$ReplyBodyImplCopyWithImpl<$Res>
    extends _$ReplyBodyCopyWithImpl<$Res, _$ReplyBodyImpl>
    implements _$$ReplyBodyImplCopyWith<$Res> {
  __$$ReplyBodyImplCopyWithImpl(
      _$ReplyBodyImpl _value, $Res Function(_$ReplyBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
    Object? postId = freezed,
    Object? creator = null,
    Object? content = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
    Object? replyId = freezed,
  }) {
    return _then(_$ReplyBodyImpl(
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as int,
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      replyId: freezed == replyId
          ? _value.replyId
          : replyId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReplyBodyImpl implements _ReplyBody {
  const _$ReplyBodyImpl(
      {required this.commentId,
      this.postId,
      required this.creator,
      required this.content,
      required this.createdAt,
      required this.updatedAt,
      required this.deletedAt,
      this.replyId});

  factory _$ReplyBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReplyBodyImplFromJson(json);

  @override
  final int commentId;
  @override
  final int? postId;
  @override
  final String creator;
  @override
  final String content;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final dynamic deletedAt;
  @override
  final int? replyId;

  @override
  String toString() {
    return 'ReplyBody(commentId: $commentId, postId: $postId, creator: $creator, content: $content, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, replyId: $replyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplyBodyImpl &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            (identical(other.replyId, replyId) || other.replyId == replyId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      commentId,
      postId,
      creator,
      content,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(deletedAt),
      replyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplyBodyImplCopyWith<_$ReplyBodyImpl> get copyWith =>
      __$$ReplyBodyImplCopyWithImpl<_$ReplyBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReplyBodyImplToJson(
      this,
    );
  }
}

abstract class _ReplyBody implements ReplyBody {
  const factory _ReplyBody(
      {required final int commentId,
      final int? postId,
      required final String creator,
      required final String content,
      required final String createdAt,
      required final String updatedAt,
      required final dynamic deletedAt,
      final int? replyId}) = _$ReplyBodyImpl;

  factory _ReplyBody.fromJson(Map<String, dynamic> json) =
      _$ReplyBodyImpl.fromJson;

  @override
  int get commentId;
  @override
  int? get postId;
  @override
  String get creator;
  @override
  String get content;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  dynamic get deletedAt;
  @override
  int? get replyId;
  @override
  @JsonKey(ignore: true)
  _$$ReplyBodyImplCopyWith<_$ReplyBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MetaData _$MetaDataFromJson(Map<String, dynamic> json) {
  return _MetaData.fromJson(json);
}

/// @nodoc
mixin _$MetaData {
  int get totalPage => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaDataCopyWith<MetaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaDataCopyWith<$Res> {
  factory $MetaDataCopyWith(MetaData value, $Res Function(MetaData) then) =
      _$MetaDataCopyWithImpl<$Res, MetaData>;
  @useResult
  $Res call({int totalPage, int currentPage});
}

/// @nodoc
class _$MetaDataCopyWithImpl<$Res, $Val extends MetaData>
    implements $MetaDataCopyWith<$Res> {
  _$MetaDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPage = null,
    Object? currentPage = null,
  }) {
    return _then(_value.copyWith(
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaDataImplCopyWith<$Res>
    implements $MetaDataCopyWith<$Res> {
  factory _$$MetaDataImplCopyWith(
          _$MetaDataImpl value, $Res Function(_$MetaDataImpl) then) =
      __$$MetaDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalPage, int currentPage});
}

/// @nodoc
class __$$MetaDataImplCopyWithImpl<$Res>
    extends _$MetaDataCopyWithImpl<$Res, _$MetaDataImpl>
    implements _$$MetaDataImplCopyWith<$Res> {
  __$$MetaDataImplCopyWithImpl(
      _$MetaDataImpl _value, $Res Function(_$MetaDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPage = null,
    Object? currentPage = null,
  }) {
    return _then(_$MetaDataImpl(
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaDataImpl implements _MetaData {
  const _$MetaDataImpl({required this.totalPage, required this.currentPage});

  factory _$MetaDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaDataImplFromJson(json);

  @override
  final int totalPage;
  @override
  final int currentPage;

  @override
  String toString() {
    return 'MetaData(totalPage: $totalPage, currentPage: $currentPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaDataImpl &&
            (identical(other.totalPage, totalPage) ||
                other.totalPage == totalPage) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalPage, currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaDataImplCopyWith<_$MetaDataImpl> get copyWith =>
      __$$MetaDataImplCopyWithImpl<_$MetaDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaDataImplToJson(
      this,
    );
  }
}

abstract class _MetaData implements MetaData {
  const factory _MetaData(
      {required final int totalPage,
      required final int currentPage}) = _$MetaDataImpl;

  factory _MetaData.fromJson(Map<String, dynamic> json) =
      _$MetaDataImpl.fromJson;

  @override
  int get totalPage;
  @override
  int get currentPage;
  @override
  @JsonKey(ignore: true)
  _$$MetaDataImplCopyWith<_$MetaDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
