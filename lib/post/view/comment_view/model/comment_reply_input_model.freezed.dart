// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_reply_input_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommentReplyInputModel {
  CommentReplyInputModelBase get commentReplyInputModel =>
      throw _privateConstructorUsedError;
  String get placeholder => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentReplyInputModelCopyWith<CommentReplyInputModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentReplyInputModelCopyWith<$Res> {
  factory $CommentReplyInputModelCopyWith(CommentReplyInputModel value,
          $Res Function(CommentReplyInputModel) then) =
      _$CommentReplyInputModelCopyWithImpl<$Res, CommentReplyInputModel>;
  @useResult
  $Res call(
      {CommentReplyInputModelBase commentReplyInputModel,
      String placeholder,
      String content,
      String errorMessage});
}

/// @nodoc
class _$CommentReplyInputModelCopyWithImpl<$Res,
        $Val extends CommentReplyInputModel>
    implements $CommentReplyInputModelCopyWith<$Res> {
  _$CommentReplyInputModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentReplyInputModel = null,
    Object? placeholder = null,
    Object? content = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      commentReplyInputModel: null == commentReplyInputModel
          ? _value.commentReplyInputModel
          : commentReplyInputModel // ignore: cast_nullable_to_non_nullable
              as CommentReplyInputModelBase,
      placeholder: null == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentReplyInputModelImplCopyWith<$Res>
    implements $CommentReplyInputModelCopyWith<$Res> {
  factory _$$CommentReplyInputModelImplCopyWith(
          _$CommentReplyInputModelImpl value,
          $Res Function(_$CommentReplyInputModelImpl) then) =
      __$$CommentReplyInputModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CommentReplyInputModelBase commentReplyInputModel,
      String placeholder,
      String content,
      String errorMessage});
}

/// @nodoc
class __$$CommentReplyInputModelImplCopyWithImpl<$Res>
    extends _$CommentReplyInputModelCopyWithImpl<$Res,
        _$CommentReplyInputModelImpl>
    implements _$$CommentReplyInputModelImplCopyWith<$Res> {
  __$$CommentReplyInputModelImplCopyWithImpl(
      _$CommentReplyInputModelImpl _value,
      $Res Function(_$CommentReplyInputModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentReplyInputModel = null,
    Object? placeholder = null,
    Object? content = null,
    Object? errorMessage = null,
  }) {
    return _then(_$CommentReplyInputModelImpl(
      commentReplyInputModel: null == commentReplyInputModel
          ? _value.commentReplyInputModel
          : commentReplyInputModel // ignore: cast_nullable_to_non_nullable
              as CommentReplyInputModelBase,
      placeholder: null == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CommentReplyInputModelImpl implements _CommentReplyInputModel {
  const _$CommentReplyInputModelImpl(
      {required this.commentReplyInputModel,
      required this.placeholder,
      required this.content,
      required this.errorMessage});

  @override
  final CommentReplyInputModelBase commentReplyInputModel;
  @override
  final String placeholder;
  @override
  final String content;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CommentReplyInputModel(commentReplyInputModel: $commentReplyInputModel, placeholder: $placeholder, content: $content, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentReplyInputModelImpl &&
            (identical(other.commentReplyInputModel, commentReplyInputModel) ||
                other.commentReplyInputModel == commentReplyInputModel) &&
            (identical(other.placeholder, placeholder) ||
                other.placeholder == placeholder) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, commentReplyInputModel, placeholder, content, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentReplyInputModelImplCopyWith<_$CommentReplyInputModelImpl>
      get copyWith => __$$CommentReplyInputModelImplCopyWithImpl<
          _$CommentReplyInputModelImpl>(this, _$identity);
}

abstract class _CommentReplyInputModel implements CommentReplyInputModel {
  const factory _CommentReplyInputModel(
      {required final CommentReplyInputModelBase commentReplyInputModel,
      required final String placeholder,
      required final String content,
      required final String errorMessage}) = _$CommentReplyInputModelImpl;

  @override
  CommentReplyInputModelBase get commentReplyInputModel;
  @override
  String get placeholder;
  @override
  String get content;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$CommentReplyInputModelImplCopyWith<_$CommentReplyInputModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InitStatusInput {}

/// @nodoc
abstract class $InitStatusInputCopyWith<$Res> {
  factory $InitStatusInputCopyWith(
          InitStatusInput value, $Res Function(InitStatusInput) then) =
      _$InitStatusInputCopyWithImpl<$Res, InitStatusInput>;
}

/// @nodoc
class _$InitStatusInputCopyWithImpl<$Res, $Val extends InitStatusInput>
    implements $InitStatusInputCopyWith<$Res> {
  _$InitStatusInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitStatusInputImplCopyWith<$Res> {
  factory _$$InitStatusInputImplCopyWith(_$InitStatusInputImpl value,
          $Res Function(_$InitStatusInputImpl) then) =
      __$$InitStatusInputImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitStatusInputImplCopyWithImpl<$Res>
    extends _$InitStatusInputCopyWithImpl<$Res, _$InitStatusInputImpl>
    implements _$$InitStatusInputImplCopyWith<$Res> {
  __$$InitStatusInputImplCopyWithImpl(
      _$InitStatusInputImpl _value, $Res Function(_$InitStatusInputImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitStatusInputImpl implements _InitStatusInput {
  const _$InitStatusInputImpl();

  @override
  String toString() {
    return 'InitStatusInput()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitStatusInputImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _InitStatusInput implements InitStatusInput {
  const factory _InitStatusInput() = _$InitStatusInputImpl;
}

/// @nodoc
mixin _$CommentAppendInput {
  int get postId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentAppendInputCopyWith<CommentAppendInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentAppendInputCopyWith<$Res> {
  factory $CommentAppendInputCopyWith(
          CommentAppendInput value, $Res Function(CommentAppendInput) then) =
      _$CommentAppendInputCopyWithImpl<$Res, CommentAppendInput>;
  @useResult
  $Res call({int postId});
}

/// @nodoc
class _$CommentAppendInputCopyWithImpl<$Res, $Val extends CommentAppendInput>
    implements $CommentAppendInputCopyWith<$Res> {
  _$CommentAppendInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
  }) {
    return _then(_value.copyWith(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentAppendInputImplCopyWith<$Res>
    implements $CommentAppendInputCopyWith<$Res> {
  factory _$$CommentAppendInputImplCopyWith(_$CommentAppendInputImpl value,
          $Res Function(_$CommentAppendInputImpl) then) =
      __$$CommentAppendInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int postId});
}

/// @nodoc
class __$$CommentAppendInputImplCopyWithImpl<$Res>
    extends _$CommentAppendInputCopyWithImpl<$Res, _$CommentAppendInputImpl>
    implements _$$CommentAppendInputImplCopyWith<$Res> {
  __$$CommentAppendInputImplCopyWithImpl(_$CommentAppendInputImpl _value,
      $Res Function(_$CommentAppendInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
  }) {
    return _then(_$CommentAppendInputImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CommentAppendInputImpl implements _CommentAppendInput {
  const _$CommentAppendInputImpl({required this.postId});

  @override
  final int postId;

  @override
  String toString() {
    return 'CommentAppendInput(postId: $postId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentAppendInputImpl &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentAppendInputImplCopyWith<_$CommentAppendInputImpl> get copyWith =>
      __$$CommentAppendInputImplCopyWithImpl<_$CommentAppendInputImpl>(
          this, _$identity);
}

abstract class _CommentAppendInput implements CommentAppendInput {
  const factory _CommentAppendInput({required final int postId}) =
      _$CommentAppendInputImpl;

  @override
  int get postId;
  @override
  @JsonKey(ignore: true)
  _$$CommentAppendInputImplCopyWith<_$CommentAppendInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommentModifyInput {
  int get commentId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentModifyInputCopyWith<CommentModifyInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentModifyInputCopyWith<$Res> {
  factory $CommentModifyInputCopyWith(
          CommentModifyInput value, $Res Function(CommentModifyInput) then) =
      _$CommentModifyInputCopyWithImpl<$Res, CommentModifyInput>;
  @useResult
  $Res call({int commentId});
}

/// @nodoc
class _$CommentModifyInputCopyWithImpl<$Res, $Val extends CommentModifyInput>
    implements $CommentModifyInputCopyWith<$Res> {
  _$CommentModifyInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
  }) {
    return _then(_value.copyWith(
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentModifyInputImplCopyWith<$Res>
    implements $CommentModifyInputCopyWith<$Res> {
  factory _$$CommentModifyInputImplCopyWith(_$CommentModifyInputImpl value,
          $Res Function(_$CommentModifyInputImpl) then) =
      __$$CommentModifyInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int commentId});
}

/// @nodoc
class __$$CommentModifyInputImplCopyWithImpl<$Res>
    extends _$CommentModifyInputCopyWithImpl<$Res, _$CommentModifyInputImpl>
    implements _$$CommentModifyInputImplCopyWith<$Res> {
  __$$CommentModifyInputImplCopyWithImpl(_$CommentModifyInputImpl _value,
      $Res Function(_$CommentModifyInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
  }) {
    return _then(_$CommentModifyInputImpl(
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CommentModifyInputImpl implements _CommentModifyInput {
  const _$CommentModifyInputImpl({required this.commentId});

  @override
  final int commentId;

  @override
  String toString() {
    return 'CommentModifyInput(commentId: $commentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentModifyInputImpl &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentModifyInputImplCopyWith<_$CommentModifyInputImpl> get copyWith =>
      __$$CommentModifyInputImplCopyWithImpl<_$CommentModifyInputImpl>(
          this, _$identity);
}

abstract class _CommentModifyInput implements CommentModifyInput {
  const factory _CommentModifyInput({required final int commentId}) =
      _$CommentModifyInputImpl;

  @override
  int get commentId;
  @override
  @JsonKey(ignore: true)
  _$$CommentModifyInputImplCopyWith<_$CommentModifyInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReplyAppendInput {
  String get targetNickname => throw _privateConstructorUsedError;
  int get commentId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReplyAppendInputCopyWith<ReplyAppendInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyAppendInputCopyWith<$Res> {
  factory $ReplyAppendInputCopyWith(
          ReplyAppendInput value, $Res Function(ReplyAppendInput) then) =
      _$ReplyAppendInputCopyWithImpl<$Res, ReplyAppendInput>;
  @useResult
  $Res call({String targetNickname, int commentId});
}

/// @nodoc
class _$ReplyAppendInputCopyWithImpl<$Res, $Val extends ReplyAppendInput>
    implements $ReplyAppendInputCopyWith<$Res> {
  _$ReplyAppendInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetNickname = null,
    Object? commentId = null,
  }) {
    return _then(_value.copyWith(
      targetNickname: null == targetNickname
          ? _value.targetNickname
          : targetNickname // ignore: cast_nullable_to_non_nullable
              as String,
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReplyAppendInputImplCopyWith<$Res>
    implements $ReplyAppendInputCopyWith<$Res> {
  factory _$$ReplyAppendInputImplCopyWith(_$ReplyAppendInputImpl value,
          $Res Function(_$ReplyAppendInputImpl) then) =
      __$$ReplyAppendInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String targetNickname, int commentId});
}

/// @nodoc
class __$$ReplyAppendInputImplCopyWithImpl<$Res>
    extends _$ReplyAppendInputCopyWithImpl<$Res, _$ReplyAppendInputImpl>
    implements _$$ReplyAppendInputImplCopyWith<$Res> {
  __$$ReplyAppendInputImplCopyWithImpl(_$ReplyAppendInputImpl _value,
      $Res Function(_$ReplyAppendInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetNickname = null,
    Object? commentId = null,
  }) {
    return _then(_$ReplyAppendInputImpl(
      targetNickname: null == targetNickname
          ? _value.targetNickname
          : targetNickname // ignore: cast_nullable_to_non_nullable
              as String,
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ReplyAppendInputImpl implements _ReplyAppendInput {
  const _$ReplyAppendInputImpl(
      {required this.targetNickname, required this.commentId});

  @override
  final String targetNickname;
  @override
  final int commentId;

  @override
  String toString() {
    return 'ReplyAppendInput(targetNickname: $targetNickname, commentId: $commentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplyAppendInputImpl &&
            (identical(other.targetNickname, targetNickname) ||
                other.targetNickname == targetNickname) &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, targetNickname, commentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplyAppendInputImplCopyWith<_$ReplyAppendInputImpl> get copyWith =>
      __$$ReplyAppendInputImplCopyWithImpl<_$ReplyAppendInputImpl>(
          this, _$identity);
}

abstract class _ReplyAppendInput implements ReplyAppendInput {
  const factory _ReplyAppendInput(
      {required final String targetNickname,
      required final int commentId}) = _$ReplyAppendInputImpl;

  @override
  String get targetNickname;
  @override
  int get commentId;
  @override
  @JsonKey(ignore: true)
  _$$ReplyAppendInputImplCopyWith<_$ReplyAppendInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReplyModifyInput {
  int get replyId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReplyModifyInputCopyWith<ReplyModifyInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyModifyInputCopyWith<$Res> {
  factory $ReplyModifyInputCopyWith(
          ReplyModifyInput value, $Res Function(ReplyModifyInput) then) =
      _$ReplyModifyInputCopyWithImpl<$Res, ReplyModifyInput>;
  @useResult
  $Res call({int replyId});
}

/// @nodoc
class _$ReplyModifyInputCopyWithImpl<$Res, $Val extends ReplyModifyInput>
    implements $ReplyModifyInputCopyWith<$Res> {
  _$ReplyModifyInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replyId = null,
  }) {
    return _then(_value.copyWith(
      replyId: null == replyId
          ? _value.replyId
          : replyId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReplyModifyInputImplCopyWith<$Res>
    implements $ReplyModifyInputCopyWith<$Res> {
  factory _$$ReplyModifyInputImplCopyWith(_$ReplyModifyInputImpl value,
          $Res Function(_$ReplyModifyInputImpl) then) =
      __$$ReplyModifyInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int replyId});
}

/// @nodoc
class __$$ReplyModifyInputImplCopyWithImpl<$Res>
    extends _$ReplyModifyInputCopyWithImpl<$Res, _$ReplyModifyInputImpl>
    implements _$$ReplyModifyInputImplCopyWith<$Res> {
  __$$ReplyModifyInputImplCopyWithImpl(_$ReplyModifyInputImpl _value,
      $Res Function(_$ReplyModifyInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replyId = null,
  }) {
    return _then(_$ReplyModifyInputImpl(
      replyId: null == replyId
          ? _value.replyId
          : replyId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ReplyModifyInputImpl implements _ReplyModifyInput {
  const _$ReplyModifyInputImpl({required this.replyId});

  @override
  final int replyId;

  @override
  String toString() {
    return 'ReplyModifyInput(replyId: $replyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplyModifyInputImpl &&
            (identical(other.replyId, replyId) || other.replyId == replyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, replyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplyModifyInputImplCopyWith<_$ReplyModifyInputImpl> get copyWith =>
      __$$ReplyModifyInputImplCopyWithImpl<_$ReplyModifyInputImpl>(
          this, _$identity);
}

abstract class _ReplyModifyInput implements ReplyModifyInput {
  const factory _ReplyModifyInput({required final int replyId}) =
      _$ReplyModifyInputImpl;

  @override
  int get replyId;
  @override
  @JsonKey(ignore: true)
  _$$ReplyModifyInputImplCopyWith<_$ReplyModifyInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
