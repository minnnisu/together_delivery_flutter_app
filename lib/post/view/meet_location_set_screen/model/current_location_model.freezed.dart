// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CurrentLocationModel {
  Position get currentLocation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrentLocationModelCopyWith<CurrentLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentLocationModelCopyWith<$Res> {
  factory $CurrentLocationModelCopyWith(CurrentLocationModel value,
          $Res Function(CurrentLocationModel) then) =
      _$CurrentLocationModelCopyWithImpl<$Res, CurrentLocationModel>;
  @useResult
  $Res call({Position currentLocation});
}

/// @nodoc
class _$CurrentLocationModelCopyWithImpl<$Res,
        $Val extends CurrentLocationModel>
    implements $CurrentLocationModelCopyWith<$Res> {
  _$CurrentLocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLocation = null,
  }) {
    return _then(_value.copyWith(
      currentLocation: null == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as Position,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentLocationModelImplCopyWith<$Res>
    implements $CurrentLocationModelCopyWith<$Res> {
  factory _$$CurrentLocationModelImplCopyWith(_$CurrentLocationModelImpl value,
          $Res Function(_$CurrentLocationModelImpl) then) =
      __$$CurrentLocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Position currentLocation});
}

/// @nodoc
class __$$CurrentLocationModelImplCopyWithImpl<$Res>
    extends _$CurrentLocationModelCopyWithImpl<$Res, _$CurrentLocationModelImpl>
    implements _$$CurrentLocationModelImplCopyWith<$Res> {
  __$$CurrentLocationModelImplCopyWithImpl(_$CurrentLocationModelImpl _value,
      $Res Function(_$CurrentLocationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLocation = null,
  }) {
    return _then(_$CurrentLocationModelImpl(
      currentLocation: null == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as Position,
    ));
  }
}

/// @nodoc

class _$CurrentLocationModelImpl implements _CurrentLocationModel {
  const _$CurrentLocationModelImpl({required this.currentLocation});

  @override
  final Position currentLocation;

  @override
  String toString() {
    return 'CurrentLocationModel(currentLocation: $currentLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentLocationModelImpl &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentLocationModelImplCopyWith<_$CurrentLocationModelImpl>
      get copyWith =>
          __$$CurrentLocationModelImplCopyWithImpl<_$CurrentLocationModelImpl>(
              this, _$identity);
}

abstract class _CurrentLocationModel implements CurrentLocationModel {
  const factory _CurrentLocationModel(
      {required final Position currentLocation}) = _$CurrentLocationModelImpl;

  @override
  Position get currentLocation;
  @override
  @JsonKey(ignore: true)
  _$$CurrentLocationModelImplCopyWith<_$CurrentLocationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
