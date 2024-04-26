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

MeetLocationModel _$MeetLocationModelFromJson(Map<String, dynamic> json) {
  return _MeetLocationModel.fromJson(json);
}

/// @nodoc
mixin _$MeetLocationModel {
  String get address => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
  $Res call({String address, double latitude, double longitude});
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
    Object? address = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
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
  $Res call({String address, double latitude, double longitude});
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
    Object? address = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$MeetLocationModelImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeetLocationModelImpl implements _MeetLocationModel {
  const _$MeetLocationModelImpl(
      {required this.address, required this.latitude, required this.longitude});

  factory _$MeetLocationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeetLocationModelImplFromJson(json);

  @override
  final String address;
  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'MeetLocationModel(address: $address, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetLocationModelImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetLocationModelImplCopyWith<_$MeetLocationModelImpl> get copyWith =>
      __$$MeetLocationModelImplCopyWithImpl<_$MeetLocationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetLocationModelImplToJson(
      this,
    );
  }
}

abstract class _MeetLocationModel implements MeetLocationModel {
  const factory _MeetLocationModel(
      {required final String address,
      required final double latitude,
      required final double longitude}) = _$MeetLocationModelImpl;

  factory _MeetLocationModel.fromJson(Map<String, dynamic> json) =
      _$MeetLocationModelImpl.fromJson;

  @override
  String get address;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$MeetLocationModelImplCopyWith<_$MeetLocationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
