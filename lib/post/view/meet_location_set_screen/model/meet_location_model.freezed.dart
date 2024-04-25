// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meet_location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MeetLocationModel {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get roadAddr => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MeetLocationModelCopyWith<MeetLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetLocationModelCopyWith<$Res> {
  factory $MeetLocationModelCopyWith(
          MeetLocationModel value, $Res Function(MeetLocationModel) then) =
      _$MeetLocationModelCopyWithImpl<$Res, MeetLocationModel>;
  @useResult
  $Res call({double latitude, double longitude, String roadAddr});
}

/// @nodoc
class _$MeetLocationModelCopyWithImpl<$Res, $Val extends MeetLocationModel>
    implements $MeetLocationModelCopyWith<$Res> {
  _$MeetLocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? roadAddr = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      roadAddr: null == roadAddr
          ? _value.roadAddr
          : roadAddr // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeetLocationModelImplCopyWith<$Res>
    implements $MeetLocationModelCopyWith<$Res> {
  factory _$$MeetLocationModelImplCopyWith(_$MeetLocationModelImpl value,
          $Res Function(_$MeetLocationModelImpl) then) =
      __$$MeetLocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude, String roadAddr});
}

/// @nodoc
class __$$MeetLocationModelImplCopyWithImpl<$Res>
    extends _$MeetLocationModelCopyWithImpl<$Res, _$MeetLocationModelImpl>
    implements _$$MeetLocationModelImplCopyWith<$Res> {
  __$$MeetLocationModelImplCopyWithImpl(_$MeetLocationModelImpl _value,
      $Res Function(_$MeetLocationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? roadAddr = null,
  }) {
    return _then(_$MeetLocationModelImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      roadAddr: null == roadAddr
          ? _value.roadAddr
          : roadAddr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MeetLocationModelImpl implements _MeetLocationModel {
  const _$MeetLocationModelImpl(
      {required this.latitude,
      required this.longitude,
      required this.roadAddr});

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String roadAddr;

  @override
  String toString() {
    return 'MeetLocationModel(latitude: $latitude, longitude: $longitude, roadAddr: $roadAddr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetLocationModelImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.roadAddr, roadAddr) ||
                other.roadAddr == roadAddr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, roadAddr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetLocationModelImplCopyWith<_$MeetLocationModelImpl> get copyWith =>
      __$$MeetLocationModelImplCopyWithImpl<_$MeetLocationModelImpl>(
          this, _$identity);
}

abstract class _MeetLocationModel implements MeetLocationModel {
  const factory _MeetLocationModel(
      {required final double latitude,
      required final double longitude,
      required final String roadAddr}) = _$MeetLocationModelImpl;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get roadAddr;
  @override
  @JsonKey(ignore: true)
  _$$MeetLocationModelImplCopyWith<_$MeetLocationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
