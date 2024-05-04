// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reply_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReplyResponseModel _$ReplyResponseModelFromJson(Map<String, dynamic> json) {
  return _ReplyResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ReplyResponseModel {
  List<ReplyBody> get replies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReplyResponseModelCopyWith<ReplyResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyResponseModelCopyWith<$Res> {
  factory $ReplyResponseModelCopyWith(
          ReplyResponseModel value, $Res Function(ReplyResponseModel) then) =
      _$ReplyResponseModelCopyWithImpl<$Res, ReplyResponseModel>;
  @useResult
  $Res call({List<ReplyBody> replies});
}

/// @nodoc
class _$ReplyResponseModelCopyWithImpl<$Res, $Val extends ReplyResponseModel>
    implements $ReplyResponseModelCopyWith<$Res> {
  _$ReplyResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$ReplyResponseModelImplCopyWith<$Res>
    implements $ReplyResponseModelCopyWith<$Res> {
  factory _$$ReplyResponseModelImplCopyWith(_$ReplyResponseModelImpl value,
          $Res Function(_$ReplyResponseModelImpl) then) =
      __$$ReplyResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ReplyBody> replies});
}

/// @nodoc
class __$$ReplyResponseModelImplCopyWithImpl<$Res>
    extends _$ReplyResponseModelCopyWithImpl<$Res, _$ReplyResponseModelImpl>
    implements _$$ReplyResponseModelImplCopyWith<$Res> {
  __$$ReplyResponseModelImplCopyWithImpl(_$ReplyResponseModelImpl _value,
      $Res Function(_$ReplyResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replies = null,
  }) {
    return _then(_$ReplyResponseModelImpl(
      replies: null == replies
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<ReplyBody>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReplyResponseModelImpl implements _ReplyResponseModel {
  const _$ReplyResponseModelImpl({required final List<ReplyBody> replies})
      : _replies = replies;

  factory _$ReplyResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReplyResponseModelImplFromJson(json);

  final List<ReplyBody> _replies;
  @override
  List<ReplyBody> get replies {
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_replies);
  }

  @override
  String toString() {
    return 'ReplyResponseModel(replies: $replies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplyResponseModelImpl &&
            const DeepCollectionEquality().equals(other._replies, _replies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_replies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplyResponseModelImplCopyWith<_$ReplyResponseModelImpl> get copyWith =>
      __$$ReplyResponseModelImplCopyWithImpl<_$ReplyResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReplyResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ReplyResponseModel implements ReplyResponseModel {
  const factory _ReplyResponseModel({required final List<ReplyBody> replies}) =
      _$ReplyResponseModelImpl;

  factory _ReplyResponseModel.fromJson(Map<String, dynamic> json) =
      _$ReplyResponseModelImpl.fromJson;

  @override
  List<ReplyBody> get replies;
  @override
  @JsonKey(ignore: true)
  _$$ReplyResponseModelImplCopyWith<_$ReplyResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
