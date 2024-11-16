// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_room_create_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatRoomCreateRequestModel _$ChatRoomCreateRequestModelFromJson(
    Map<String, dynamic> json) {
  return _ChatRoomCreateRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ChatRoomCreateRequestModel {
  int get postId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatRoomCreateRequestModelCopyWith<ChatRoomCreateRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomCreateRequestModelCopyWith<$Res> {
  factory $ChatRoomCreateRequestModelCopyWith(ChatRoomCreateRequestModel value,
          $Res Function(ChatRoomCreateRequestModel) then) =
      _$ChatRoomCreateRequestModelCopyWithImpl<$Res,
          ChatRoomCreateRequestModel>;
  @useResult
  $Res call({int postId});
}

/// @nodoc
class _$ChatRoomCreateRequestModelCopyWithImpl<$Res,
        $Val extends ChatRoomCreateRequestModel>
    implements $ChatRoomCreateRequestModelCopyWith<$Res> {
  _$ChatRoomCreateRequestModelCopyWithImpl(this._value, this._then);

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
abstract class _$$ChatRoomCreateRequestModelImplCopyWith<$Res>
    implements $ChatRoomCreateRequestModelCopyWith<$Res> {
  factory _$$ChatRoomCreateRequestModelImplCopyWith(
          _$ChatRoomCreateRequestModelImpl value,
          $Res Function(_$ChatRoomCreateRequestModelImpl) then) =
      __$$ChatRoomCreateRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int postId});
}

/// @nodoc
class __$$ChatRoomCreateRequestModelImplCopyWithImpl<$Res>
    extends _$ChatRoomCreateRequestModelCopyWithImpl<$Res,
        _$ChatRoomCreateRequestModelImpl>
    implements _$$ChatRoomCreateRequestModelImplCopyWith<$Res> {
  __$$ChatRoomCreateRequestModelImplCopyWithImpl(
      _$ChatRoomCreateRequestModelImpl _value,
      $Res Function(_$ChatRoomCreateRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
  }) {
    return _then(_$ChatRoomCreateRequestModelImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatRoomCreateRequestModelImpl implements _ChatRoomCreateRequestModel {
  const _$ChatRoomCreateRequestModelImpl({required this.postId});

  factory _$ChatRoomCreateRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ChatRoomCreateRequestModelImplFromJson(json);

  @override
  final int postId;

  @override
  String toString() {
    return 'ChatRoomCreateRequestModel(postId: $postId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatRoomCreateRequestModelImpl &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, postId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatRoomCreateRequestModelImplCopyWith<_$ChatRoomCreateRequestModelImpl>
      get copyWith => __$$ChatRoomCreateRequestModelImplCopyWithImpl<
          _$ChatRoomCreateRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatRoomCreateRequestModelImplToJson(
      this,
    );
  }
}

abstract class _ChatRoomCreateRequestModel
    implements ChatRoomCreateRequestModel {
  const factory _ChatRoomCreateRequestModel({required final int postId}) =
      _$ChatRoomCreateRequestModelImpl;

  factory _ChatRoomCreateRequestModel.fromJson(Map<String, dynamic> json) =
      _$ChatRoomCreateRequestModelImpl.fromJson;

  @override
  int get postId;
  @override
  @JsonKey(ignore: true)
  _$$ChatRoomCreateRequestModelImplCopyWith<_$ChatRoomCreateRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
