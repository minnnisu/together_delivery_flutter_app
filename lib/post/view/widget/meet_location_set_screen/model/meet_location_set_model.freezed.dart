// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meet_location_set_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MeetLocationSetModel _$MeetLocationSetModelFromJson(Map<String, dynamic> json) {
  return _MeetLocationSetModel.fromJson(json);
}

/// @nodoc
mixin _$MeetLocationSetModel {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get roadAddr => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeetLocationSetModelCopyWith<MeetLocationSetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetLocationSetModelCopyWith<$Res> {
  factory $MeetLocationSetModelCopyWith(MeetLocationSetModel value,
          $Res Function(MeetLocationSetModel) then) =
      _$MeetLocationSetModelCopyWithImpl<$Res, MeetLocationSetModel>;
  @useResult
  $Res call({double latitude, double longitude, String roadAddr});
}

/// @nodoc
class _$MeetLocationSetModelCopyWithImpl<$Res,
        $Val extends MeetLocationSetModel>
    implements $MeetLocationSetModelCopyWith<$Res> {
  _$MeetLocationSetModelCopyWithImpl(this._value, this._then);

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
abstract class _$$MeetLocationSetModelImplCopyWith<$Res>
    implements $MeetLocationSetModelCopyWith<$Res> {
  factory _$$MeetLocationSetModelImplCopyWith(_$MeetLocationSetModelImpl value,
          $Res Function(_$MeetLocationSetModelImpl) then) =
      __$$MeetLocationSetModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude, String roadAddr});
}

/// @nodoc
class __$$MeetLocationSetModelImplCopyWithImpl<$Res>
    extends _$MeetLocationSetModelCopyWithImpl<$Res, _$MeetLocationSetModelImpl>
    implements _$$MeetLocationSetModelImplCopyWith<$Res> {
  __$$MeetLocationSetModelImplCopyWithImpl(_$MeetLocationSetModelImpl _value,
      $Res Function(_$MeetLocationSetModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? roadAddr = null,
  }) {
    return _then(_$MeetLocationSetModelImpl(
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
@JsonSerializable()
class _$MeetLocationSetModelImpl implements _MeetLocationSetModel {
  const _$MeetLocationSetModelImpl(
      {required this.latitude,
      required this.longitude,
      required this.roadAddr});

  factory _$MeetLocationSetModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeetLocationSetModelImplFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String roadAddr;

  @override
  String toString() {
    return 'MeetLocationSetModel(latitude: $latitude, longitude: $longitude, roadAddr: $roadAddr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetLocationSetModelImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.roadAddr, roadAddr) ||
                other.roadAddr == roadAddr));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, roadAddr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetLocationSetModelImplCopyWith<_$MeetLocationSetModelImpl>
      get copyWith =>
          __$$MeetLocationSetModelImplCopyWithImpl<_$MeetLocationSetModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetLocationSetModelImplToJson(
      this,
    );
  }
}

abstract class _MeetLocationSetModel implements MeetLocationSetModel {
  const factory _MeetLocationSetModel(
      {required final double latitude,
      required final double longitude,
      required final String roadAddr}) = _$MeetLocationSetModelImpl;

  factory _MeetLocationSetModel.fromJson(Map<String, dynamic> json) =
      _$MeetLocationSetModelImpl.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get roadAddr;
  @override
  @JsonKey(ignore: true)
  _$$MeetLocationSetModelImplCopyWith<_$MeetLocationSetModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
