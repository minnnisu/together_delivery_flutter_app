// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nicknameDuplicationCheck.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NicknameDuplicationCheck _$NicknameDuplicationCheckFromJson(
    Map<String, dynamic> json) {
  return _NicknameDuplicationCheck.fromJson(json);
}

/// @nodoc
mixin _$NicknameDuplicationCheck {
  String get nickname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NicknameDuplicationCheckCopyWith<NicknameDuplicationCheck> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NicknameDuplicationCheckCopyWith<$Res> {
  factory $NicknameDuplicationCheckCopyWith(NicknameDuplicationCheck value,
          $Res Function(NicknameDuplicationCheck) then) =
      _$NicknameDuplicationCheckCopyWithImpl<$Res, NicknameDuplicationCheck>;
  @useResult
  $Res call({String nickname});
}

/// @nodoc
class _$NicknameDuplicationCheckCopyWithImpl<$Res,
        $Val extends NicknameDuplicationCheck>
    implements $NicknameDuplicationCheckCopyWith<$Res> {
  _$NicknameDuplicationCheckCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
  }) {
    return _then(_value.copyWith(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NicknameDuplicationCheckImplCopyWith<$Res>
    implements $NicknameDuplicationCheckCopyWith<$Res> {
  factory _$$NicknameDuplicationCheckImplCopyWith(
          _$NicknameDuplicationCheckImpl value,
          $Res Function(_$NicknameDuplicationCheckImpl) then) =
      __$$NicknameDuplicationCheckImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nickname});
}

/// @nodoc
class __$$NicknameDuplicationCheckImplCopyWithImpl<$Res>
    extends _$NicknameDuplicationCheckCopyWithImpl<$Res,
        _$NicknameDuplicationCheckImpl>
    implements _$$NicknameDuplicationCheckImplCopyWith<$Res> {
  __$$NicknameDuplicationCheckImplCopyWithImpl(
      _$NicknameDuplicationCheckImpl _value,
      $Res Function(_$NicknameDuplicationCheckImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
  }) {
    return _then(_$NicknameDuplicationCheckImpl(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NicknameDuplicationCheckImpl
    with DiagnosticableTreeMixin
    implements _NicknameDuplicationCheck {
  const _$NicknameDuplicationCheckImpl({required this.nickname});

  factory _$NicknameDuplicationCheckImpl.fromJson(Map<String, dynamic> json) =>
      _$$NicknameDuplicationCheckImplFromJson(json);

  @override
  final String nickname;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NicknameDuplicationCheck(nickname: $nickname)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NicknameDuplicationCheck'))
      ..add(DiagnosticsProperty('nickname', nickname));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NicknameDuplicationCheckImpl &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nickname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NicknameDuplicationCheckImplCopyWith<_$NicknameDuplicationCheckImpl>
      get copyWith => __$$NicknameDuplicationCheckImplCopyWithImpl<
          _$NicknameDuplicationCheckImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NicknameDuplicationCheckImplToJson(
      this,
    );
  }
}

abstract class _NicknameDuplicationCheck implements NicknameDuplicationCheck {
  const factory _NicknameDuplicationCheck({required final String nickname}) =
      _$NicknameDuplicationCheckImpl;

  factory _NicknameDuplicationCheck.fromJson(Map<String, dynamic> json) =
      _$NicknameDuplicationCheckImpl.fromJson;

  @override
  String get nickname;
  @override
  @JsonKey(ignore: true)
  _$$NicknameDuplicationCheckImplCopyWith<_$NicknameDuplicationCheckImpl>
      get copyWith => throw _privateConstructorUsedError;
}
