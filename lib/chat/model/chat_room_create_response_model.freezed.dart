// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_room_create_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatRoomCreateResponseModel _$ChatRoomCreateResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ChatRoomCreateResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ChatRoomCreateResponseModel {
  int get chatRoomId => throw _privateConstructorUsedError;
  int get postId => throw _privateConstructorUsedError;
  String get creator => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatRoomCreateResponseModelCopyWith<ChatRoomCreateResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomCreateResponseModelCopyWith<$Res> {
  factory $ChatRoomCreateResponseModelCopyWith(
          ChatRoomCreateResponseModel value,
          $Res Function(ChatRoomCreateResponseModel) then) =
      _$ChatRoomCreateResponseModelCopyWithImpl<$Res,
          ChatRoomCreateResponseModel>;
  @useResult
  $Res call({int chatRoomId, int postId, String creator, String createdAt});
}

/// @nodoc
class _$ChatRoomCreateResponseModelCopyWithImpl<$Res,
        $Val extends ChatRoomCreateResponseModel>
    implements $ChatRoomCreateResponseModelCopyWith<$Res> {
  _$ChatRoomCreateResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatRoomId = null,
    Object? postId = null,
    Object? creator = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      chatRoomId: null == chatRoomId
          ? _value.chatRoomId
          : chatRoomId // ignore: cast_nullable_to_non_nullable
              as int,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatRoomCreateResponseModelImplCopyWith<$Res>
    implements $ChatRoomCreateResponseModelCopyWith<$Res> {
  factory _$$ChatRoomCreateResponseModelImplCopyWith(
          _$ChatRoomCreateResponseModelImpl value,
          $Res Function(_$ChatRoomCreateResponseModelImpl) then) =
      __$$ChatRoomCreateResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int chatRoomId, int postId, String creator, String createdAt});
}

/// @nodoc
class __$$ChatRoomCreateResponseModelImplCopyWithImpl<$Res>
    extends _$ChatRoomCreateResponseModelCopyWithImpl<$Res,
        _$ChatRoomCreateResponseModelImpl>
    implements _$$ChatRoomCreateResponseModelImplCopyWith<$Res> {
  __$$ChatRoomCreateResponseModelImplCopyWithImpl(
      _$ChatRoomCreateResponseModelImpl _value,
      $Res Function(_$ChatRoomCreateResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatRoomId = null,
    Object? postId = null,
    Object? creator = null,
    Object? createdAt = null,
  }) {
    return _then(_$ChatRoomCreateResponseModelImpl(
      chatRoomId: null == chatRoomId
          ? _value.chatRoomId
          : chatRoomId // ignore: cast_nullable_to_non_nullable
              as int,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
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
class _$ChatRoomCreateResponseModelImpl
    implements _ChatRoomCreateResponseModel {
  const _$ChatRoomCreateResponseModelImpl(
      {required this.chatRoomId,
      required this.postId,
      required this.creator,
      required this.createdAt});

  factory _$ChatRoomCreateResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ChatRoomCreateResponseModelImplFromJson(json);

  @override
  final int chatRoomId;
  @override
  final int postId;
  @override
  final String creator;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'ChatRoomCreateResponseModel(chatRoomId: $chatRoomId, postId: $postId, creator: $creator, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatRoomCreateResponseModelImpl &&
            (identical(other.chatRoomId, chatRoomId) ||
                other.chatRoomId == chatRoomId) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, chatRoomId, postId, creator, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatRoomCreateResponseModelImplCopyWith<_$ChatRoomCreateResponseModelImpl>
      get copyWith => __$$ChatRoomCreateResponseModelImplCopyWithImpl<
          _$ChatRoomCreateResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatRoomCreateResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ChatRoomCreateResponseModel
    implements ChatRoomCreateResponseModel {
  const factory _ChatRoomCreateResponseModel(
      {required final int chatRoomId,
      required final int postId,
      required final String creator,
      required final String createdAt}) = _$ChatRoomCreateResponseModelImpl;

  factory _ChatRoomCreateResponseModel.fromJson(Map<String, dynamic> json) =
      _$ChatRoomCreateResponseModelImpl.fromJson;

  @override
  int get chatRoomId;
  @override
  int get postId;
  @override
  String get creator;
  @override
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$ChatRoomCreateResponseModelImplCopyWith<_$ChatRoomCreateResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
