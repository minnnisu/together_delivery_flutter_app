// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_detail_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostDetailRequest _$PostDetailRequestFromJson(Map<String, dynamic> json) {
  return _PostDetailRequest.fromJson(json);
}

/// @nodoc
mixin _$PostDetailRequest {
  int get postId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostDetailRequestCopyWith<PostDetailRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostDetailRequestCopyWith<$Res> {
  factory $PostDetailRequestCopyWith(
          PostDetailRequest value, $Res Function(PostDetailRequest) then) =
      _$PostDetailRequestCopyWithImpl<$Res, PostDetailRequest>;
  @useResult
  $Res call({int postId});
}

/// @nodoc
class _$PostDetailRequestCopyWithImpl<$Res, $Val extends PostDetailRequest>
    implements $PostDetailRequestCopyWith<$Res> {
  _$PostDetailRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$PostDetailRequestImplCopyWith<$Res>
    implements $PostDetailRequestCopyWith<$Res> {
  factory _$$PostDetailRequestImplCopyWith(_$PostDetailRequestImpl value,
          $Res Function(_$PostDetailRequestImpl) then) =
      __$$PostDetailRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int postId});
}

/// @nodoc
class __$$PostDetailRequestImplCopyWithImpl<$Res>
    extends _$PostDetailRequestCopyWithImpl<$Res, _$PostDetailRequestImpl>
    implements _$$PostDetailRequestImplCopyWith<$Res> {
  __$$PostDetailRequestImplCopyWithImpl(_$PostDetailRequestImpl _value,
      $Res Function(_$PostDetailRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
  }) {
    return _then(_$PostDetailRequestImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostDetailRequestImpl
    with DiagnosticableTreeMixin
    implements _PostDetailRequest {
  const _$PostDetailRequestImpl({required this.postId});

  factory _$PostDetailRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostDetailRequestImplFromJson(json);

  @override
  final int postId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostDetailRequest(postId: $postId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostDetailRequest'))
      ..add(DiagnosticsProperty('postId', postId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostDetailRequestImpl &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, postId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostDetailRequestImplCopyWith<_$PostDetailRequestImpl> get copyWith =>
      __$$PostDetailRequestImplCopyWithImpl<_$PostDetailRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostDetailRequestImplToJson(
      this,
    );
  }
}

abstract class _PostDetailRequest implements PostDetailRequest {
  const factory _PostDetailRequest({required final int postId}) =
      _$PostDetailRequestImpl;

  factory _PostDetailRequest.fromJson(Map<String, dynamic> json) =
      _$PostDetailRequestImpl.fromJson;

  @override
  int get postId;
  @override
  @JsonKey(ignore: true)
  _$$PostDetailRequestImplCopyWith<_$PostDetailRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
