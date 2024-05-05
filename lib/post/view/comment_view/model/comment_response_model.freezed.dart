// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentResponseModel _$CommentResponseModelFromJson(Map<String, dynamic> json) {
  return _CommentResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CommentResponseModel {
  List<Comment> get comments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentResponseModelCopyWith<CommentResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentResponseModelCopyWith<$Res> {
  factory $CommentResponseModelCopyWith(CommentResponseModel value,
          $Res Function(CommentResponseModel) then) =
      _$CommentResponseModelCopyWithImpl<$Res, CommentResponseModel>;
  @useResult
  $Res call({List<Comment> comments});
}

/// @nodoc
class _$CommentResponseModelCopyWithImpl<$Res,
        $Val extends CommentResponseModel>
    implements $CommentResponseModelCopyWith<$Res> {
  _$CommentResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
  }) {
    return _then(_value.copyWith(
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentResponseModelImplCopyWith<$Res>
    implements $CommentResponseModelCopyWith<$Res> {
  factory _$$CommentResponseModelImplCopyWith(_$CommentResponseModelImpl value,
          $Res Function(_$CommentResponseModelImpl) then) =
      __$$CommentResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Comment> comments});
}

/// @nodoc
class __$$CommentResponseModelImplCopyWithImpl<$Res>
    extends _$CommentResponseModelCopyWithImpl<$Res, _$CommentResponseModelImpl>
    implements _$$CommentResponseModelImplCopyWith<$Res> {
  __$$CommentResponseModelImplCopyWithImpl(_$CommentResponseModelImpl _value,
      $Res Function(_$CommentResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
  }) {
    return _then(_$CommentResponseModelImpl(
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentResponseModelImpl implements _CommentResponseModel {
  const _$CommentResponseModelImpl({required final List<Comment> comments})
      : _comments = comments;

  factory _$CommentResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentResponseModelImplFromJson(json);

  final List<Comment> _comments;
  @override
  List<Comment> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  String toString() {
    return 'CommentResponseModel(comments: $comments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentResponseModelImpl &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_comments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentResponseModelImplCopyWith<_$CommentResponseModelImpl>
      get copyWith =>
          __$$CommentResponseModelImplCopyWithImpl<_$CommentResponseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CommentResponseModel implements CommentResponseModel {
  const factory _CommentResponseModel({required final List<Comment> comments}) =
      _$CommentResponseModelImpl;

  factory _CommentResponseModel.fromJson(Map<String, dynamic> json) =
      _$CommentResponseModelImpl.fromJson;

  @override
  List<Comment> get comments;
  @override
  @JsonKey(ignore: true)
  _$$CommentResponseModelImplCopyWith<_$CommentResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return _Comment.fromJson(json);
}

/// @nodoc
mixin _$Comment {
  CommentBody get comment => throw _privateConstructorUsedError;
  Reply get reply => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res, Comment>;
  @useResult
  $Res call({CommentBody comment, Reply reply});

  $CommentBodyCopyWith<$Res> get comment;
  $ReplyCopyWith<$Res> get reply;
}

/// @nodoc
class _$CommentCopyWithImpl<$Res, $Val extends Comment>
    implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
    Object? reply = null,
  }) {
    return _then(_value.copyWith(
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as CommentBody,
      reply: null == reply
          ? _value.reply
          : reply // ignore: cast_nullable_to_non_nullable
              as Reply,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentBodyCopyWith<$Res> get comment {
    return $CommentBodyCopyWith<$Res>(_value.comment, (value) {
      return _then(_value.copyWith(comment: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReplyCopyWith<$Res> get reply {
    return $ReplyCopyWith<$Res>(_value.reply, (value) {
      return _then(_value.copyWith(reply: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentImplCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$$CommentImplCopyWith(
          _$CommentImpl value, $Res Function(_$CommentImpl) then) =
      __$$CommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CommentBody comment, Reply reply});

  @override
  $CommentBodyCopyWith<$Res> get comment;
  @override
  $ReplyCopyWith<$Res> get reply;
}

/// @nodoc
class __$$CommentImplCopyWithImpl<$Res>
    extends _$CommentCopyWithImpl<$Res, _$CommentImpl>
    implements _$$CommentImplCopyWith<$Res> {
  __$$CommentImplCopyWithImpl(
      _$CommentImpl _value, $Res Function(_$CommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
    Object? reply = null,
  }) {
    return _then(_$CommentImpl(
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as CommentBody,
      reply: null == reply
          ? _value.reply
          : reply // ignore: cast_nullable_to_non_nullable
              as Reply,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentImpl implements _Comment {
  const _$CommentImpl({required this.comment, required this.reply});

  factory _$CommentImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentImplFromJson(json);

  @override
  final CommentBody comment;
  @override
  final Reply reply;

  @override
  String toString() {
    return 'Comment(comment: $comment, reply: $reply)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentImpl &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.reply, reply) || other.reply == reply));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, comment, reply);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      __$$CommentImplCopyWithImpl<_$CommentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentImplToJson(
      this,
    );
  }
}

abstract class _Comment implements Comment {
  const factory _Comment(
      {required final CommentBody comment,
      required final Reply reply}) = _$CommentImpl;

  factory _Comment.fromJson(Map<String, dynamic> json) = _$CommentImpl.fromJson;

  @override
  CommentBody get comment;
  @override
  Reply get reply;
  @override
  @JsonKey(ignore: true)
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Reply _$ReplyFromJson(Map<String, dynamic> json) {
  return _Reply.fromJson(json);
}

/// @nodoc
mixin _$Reply {
  List<ReplyBody> get replies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReplyCopyWith<Reply> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyCopyWith<$Res> {
  factory $ReplyCopyWith(Reply value, $Res Function(Reply) then) =
      _$ReplyCopyWithImpl<$Res, Reply>;
  @useResult
  $Res call({List<ReplyBody> replies});
}

/// @nodoc
class _$ReplyCopyWithImpl<$Res, $Val extends Reply>
    implements $ReplyCopyWith<$Res> {
  _$ReplyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replies = null,
  }) {
    return _then(_value.copyWith(
      replies: null == replies
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<ReplyBody>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReplyImplCopyWith<$Res> implements $ReplyCopyWith<$Res> {
  factory _$$ReplyImplCopyWith(
          _$ReplyImpl value, $Res Function(_$ReplyImpl) then) =
      __$$ReplyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ReplyBody> replies});
}

/// @nodoc
class __$$ReplyImplCopyWithImpl<$Res>
    extends _$ReplyCopyWithImpl<$Res, _$ReplyImpl>
    implements _$$ReplyImplCopyWith<$Res> {
  __$$ReplyImplCopyWithImpl(
      _$ReplyImpl _value, $Res Function(_$ReplyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replies = null,
  }) {
    return _then(_$ReplyImpl(
      replies: null == replies
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<ReplyBody>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReplyImpl implements _Reply {
  const _$ReplyImpl({required final List<ReplyBody> replies})
      : _replies = replies;

  factory _$ReplyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReplyImplFromJson(json);

  final List<ReplyBody> _replies;
  @override
  List<ReplyBody> get replies {
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_replies);
  }

  @override
  String toString() {
    return 'Reply(replies: $replies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplyImpl &&
            const DeepCollectionEquality().equals(other._replies, _replies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_replies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplyImplCopyWith<_$ReplyImpl> get copyWith =>
      __$$ReplyImplCopyWithImpl<_$ReplyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReplyImplToJson(
      this,
    );
  }
}

abstract class _Reply implements Reply {
  const factory _Reply({required final List<ReplyBody> replies}) = _$ReplyImpl;

  factory _Reply.fromJson(Map<String, dynamic> json) = _$ReplyImpl.fromJson;

  @override
  List<ReplyBody> get replies;
  @override
  @JsonKey(ignore: true)
  _$$ReplyImplCopyWith<_$ReplyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
