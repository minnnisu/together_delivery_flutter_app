// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_reply_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommentReplyModel {
  CommentPageStatusType get status => throw _privateConstructorUsedError;
  List<Comment> get comments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentReplyModelCopyWith<CommentReplyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentReplyModelCopyWith<$Res> {
  factory $CommentReplyModelCopyWith(
          CommentReplyModel value, $Res Function(CommentReplyModel) then) =
      _$CommentReplyModelCopyWithImpl<$Res, CommentReplyModel>;
  @useResult
  $Res call({CommentPageStatusType status, List<Comment> comments});
}

/// @nodoc
class _$CommentReplyModelCopyWithImpl<$Res, $Val extends CommentReplyModel>
    implements $CommentReplyModelCopyWith<$Res> {
  _$CommentReplyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? comments = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CommentPageStatusType,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentReplyModelImplCopyWith<$Res>
    implements $CommentReplyModelCopyWith<$Res> {
  factory _$$CommentReplyModelImplCopyWith(_$CommentReplyModelImpl value,
          $Res Function(_$CommentReplyModelImpl) then) =
      __$$CommentReplyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CommentPageStatusType status, List<Comment> comments});
}

/// @nodoc
class __$$CommentReplyModelImplCopyWithImpl<$Res>
    extends _$CommentReplyModelCopyWithImpl<$Res, _$CommentReplyModelImpl>
    implements _$$CommentReplyModelImplCopyWith<$Res> {
  __$$CommentReplyModelImplCopyWithImpl(_$CommentReplyModelImpl _value,
      $Res Function(_$CommentReplyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? comments = null,
  }) {
    return _then(_$CommentReplyModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CommentPageStatusType,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
    ));
  }
}

/// @nodoc

class _$CommentReplyModelImpl implements _CommentReplyModel {
  const _$CommentReplyModelImpl(
      {required this.status, required final List<Comment> comments})
      : _comments = comments;

  @override
  final CommentPageStatusType status;
  final List<Comment> _comments;
  @override
  List<Comment> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  String toString() {
    return 'CommentReplyModel(status: $status, comments: $comments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentReplyModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_comments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentReplyModelImplCopyWith<_$CommentReplyModelImpl> get copyWith =>
      __$$CommentReplyModelImplCopyWithImpl<_$CommentReplyModelImpl>(
          this, _$identity);
}

abstract class _CommentReplyModel implements CommentReplyModel {
  const factory _CommentReplyModel(
      {required final CommentPageStatusType status,
      required final List<Comment> comments}) = _$CommentReplyModelImpl;

  @override
  CommentPageStatusType get status;
  @override
  List<Comment> get comments;
  @override
  @JsonKey(ignore: true)
  _$$CommentReplyModelImplCopyWith<_$CommentReplyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Comment {
  CommentBody get comment => throw _privateConstructorUsedError;
  Reply get reply => throw _privateConstructorUsedError;

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

class _$CommentImpl implements _Comment {
  const _$CommentImpl({required this.comment, required this.reply});

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

  @override
  int get hashCode => Object.hash(runtimeType, comment, reply);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      __$$CommentImplCopyWithImpl<_$CommentImpl>(this, _$identity);
}

abstract class _Comment implements Comment {
  const factory _Comment(
      {required final CommentBody comment,
      required final Reply reply}) = _$CommentImpl;

  @override
  CommentBody get comment;
  @override
  Reply get reply;
  @override
  @JsonKey(ignore: true)
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Reply {
  CommentPageStatusType get status => throw _privateConstructorUsedError;
  List<ReplyBody> get replies => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReplyCopyWith<Reply> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyCopyWith<$Res> {
  factory $ReplyCopyWith(Reply value, $Res Function(Reply) then) =
      _$ReplyCopyWithImpl<$Res, Reply>;
  @useResult
  $Res call({CommentPageStatusType status, List<ReplyBody> replies});
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
    Object? status = null,
    Object? replies = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CommentPageStatusType,
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
  $Res call({CommentPageStatusType status, List<ReplyBody> replies});
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
    Object? status = null,
    Object? replies = null,
  }) {
    return _then(_$ReplyImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CommentPageStatusType,
      replies: null == replies
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<ReplyBody>,
    ));
  }
}

/// @nodoc

class _$ReplyImpl implements _Reply {
  const _$ReplyImpl(
      {required this.status, required final List<ReplyBody> replies})
      : _replies = replies;

  @override
  final CommentPageStatusType status;
  final List<ReplyBody> _replies;
  @override
  List<ReplyBody> get replies {
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_replies);
  }

  @override
  String toString() {
    return 'Reply(status: $status, replies: $replies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplyImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._replies, _replies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_replies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplyImplCopyWith<_$ReplyImpl> get copyWith =>
      __$$ReplyImplCopyWithImpl<_$ReplyImpl>(this, _$identity);
}

abstract class _Reply implements Reply {
  const factory _Reply(
      {required final CommentPageStatusType status,
      required final List<ReplyBody> replies}) = _$ReplyImpl;

  @override
  CommentPageStatusType get status;
  @override
  List<ReplyBody> get replies;
  @override
  @JsonKey(ignore: true)
  _$$ReplyImplCopyWith<_$ReplyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
