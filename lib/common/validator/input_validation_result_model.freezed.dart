// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_validation_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InputValidationResultModel {
  bool get isValid => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InputValidationResultModelCopyWith<InputValidationResultModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputValidationResultModelCopyWith<$Res> {
  factory $InputValidationResultModelCopyWith(InputValidationResultModel value,
          $Res Function(InputValidationResultModel) then) =
      _$InputValidationResultModelCopyWithImpl<$Res,
          InputValidationResultModel>;
  @useResult
  $Res call({bool isValid, String? message});
}

/// @nodoc
class _$InputValidationResultModelCopyWithImpl<$Res,
        $Val extends InputValidationResultModel>
    implements $InputValidationResultModelCopyWith<$Res> {
  _$InputValidationResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputValidationResultModelImplCopyWith<$Res>
    implements $InputValidationResultModelCopyWith<$Res> {
  factory _$$InputValidationResultModelImplCopyWith(
          _$InputValidationResultModelImpl value,
          $Res Function(_$InputValidationResultModelImpl) then) =
      __$$InputValidationResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isValid, String? message});
}

/// @nodoc
class __$$InputValidationResultModelImplCopyWithImpl<$Res>
    extends _$InputValidationResultModelCopyWithImpl<$Res,
        _$InputValidationResultModelImpl>
    implements _$$InputValidationResultModelImplCopyWith<$Res> {
  __$$InputValidationResultModelImplCopyWithImpl(
      _$InputValidationResultModelImpl _value,
      $Res Function(_$InputValidationResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = null,
    Object? message = freezed,
  }) {
    return _then(_$InputValidationResultModelImpl(
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InputValidationResultModelImpl implements _InputValidationResultModel {
  const _$InputValidationResultModelImpl(
      {required this.isValid, required this.message});

  @override
  final bool isValid;
  @override
  final String? message;

  @override
  String toString() {
    return 'InputValidationResultModel(isValid: $isValid, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputValidationResultModelImpl &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isValid, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputValidationResultModelImplCopyWith<_$InputValidationResultModelImpl>
      get copyWith => __$$InputValidationResultModelImplCopyWithImpl<
          _$InputValidationResultModelImpl>(this, _$identity);
}

abstract class _InputValidationResultModel
    implements InputValidationResultModel {
  const factory _InputValidationResultModel(
      {required final bool isValid,
      required final String? message}) = _$InputValidationResultModelImpl;

  @override
  bool get isValid;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$InputValidationResultModelImplCopyWith<_$InputValidationResultModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
