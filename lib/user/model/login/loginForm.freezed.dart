// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loginForm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginForm _$LoginFormFromJson(Map<String, dynamic> json) {
  return _LoginForm.fromJson(json);
}

/// @nodoc
mixin _$LoginForm {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get errorMsg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginFormCopyWith<LoginForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFormCopyWith<$Res> {
  factory $LoginFormCopyWith(LoginForm value, $Res Function(LoginForm) then) =
      _$LoginFormCopyWithImpl<$Res, LoginForm>;
  @useResult
  $Res call({String username, String password, String errorMsg});
}

/// @nodoc
class _$LoginFormCopyWithImpl<$Res, $Val extends LoginForm>
    implements $LoginFormCopyWith<$Res> {
  _$LoginFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? errorMsg = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginFormImplCopyWith<$Res>
    implements $LoginFormCopyWith<$Res> {
  factory _$$LoginFormImplCopyWith(
          _$LoginFormImpl value, $Res Function(_$LoginFormImpl) then) =
      __$$LoginFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password, String errorMsg});
}

/// @nodoc
class __$$LoginFormImplCopyWithImpl<$Res>
    extends _$LoginFormCopyWithImpl<$Res, _$LoginFormImpl>
    implements _$$LoginFormImplCopyWith<$Res> {
  __$$LoginFormImplCopyWithImpl(
      _$LoginFormImpl _value, $Res Function(_$LoginFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? errorMsg = null,
  }) {
    return _then(_$LoginFormImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginFormImpl with DiagnosticableTreeMixin implements _LoginForm {
  const _$LoginFormImpl(
      {required this.username, required this.password, required this.errorMsg});

  factory _$LoginFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginFormImplFromJson(json);

  @override
  final String username;
  @override
  final String password;
  @override
  final String errorMsg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginForm(username: $username, password: $password, errorMsg: $errorMsg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginForm'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('errorMsg', errorMsg));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFormImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, password, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFormImplCopyWith<_$LoginFormImpl> get copyWith =>
      __$$LoginFormImplCopyWithImpl<_$LoginFormImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginFormImplToJson(
      this,
    );
  }
}

abstract class _LoginForm implements LoginForm {
  const factory _LoginForm(
      {required final String username,
      required final String password,
      required final String errorMsg}) = _$LoginFormImpl;

  factory _LoginForm.fromJson(Map<String, dynamic> json) =
      _$LoginFormImpl.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  String get errorMsg;
  @override
  @JsonKey(ignore: true)
  _$$LoginFormImplCopyWith<_$LoginFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
