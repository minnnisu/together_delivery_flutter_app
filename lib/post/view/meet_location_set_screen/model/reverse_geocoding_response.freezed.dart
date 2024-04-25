// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reverse_geocoding_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReverseGeocodingResponse _$ReverseGeocodingResponseFromJson(
    Map<String, dynamic> json) {
  return _ReverseGeocodingResponse.fromJson(json);
}

/// @nodoc
mixin _$ReverseGeocodingResponse {
  Status get status => throw _privateConstructorUsedError;
  List<Result> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReverseGeocodingResponseCopyWith<ReverseGeocodingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReverseGeocodingResponseCopyWith<$Res> {
  factory $ReverseGeocodingResponseCopyWith(ReverseGeocodingResponse value,
          $Res Function(ReverseGeocodingResponse) then) =
      _$ReverseGeocodingResponseCopyWithImpl<$Res, ReverseGeocodingResponse>;
  @useResult
  $Res call({Status status, List<Result> results});

  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class _$ReverseGeocodingResponseCopyWithImpl<$Res,
        $Val extends ReverseGeocodingResponse>
    implements $ReverseGeocodingResponseCopyWith<$Res> {
  _$ReverseGeocodingResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get status {
    return $StatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReverseGeocodingResponseImplCopyWith<$Res>
    implements $ReverseGeocodingResponseCopyWith<$Res> {
  factory _$$ReverseGeocodingResponseImplCopyWith(
          _$ReverseGeocodingResponseImpl value,
          $Res Function(_$ReverseGeocodingResponseImpl) then) =
      __$$ReverseGeocodingResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, List<Result> results});

  @override
  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$ReverseGeocodingResponseImplCopyWithImpl<$Res>
    extends _$ReverseGeocodingResponseCopyWithImpl<$Res,
        _$ReverseGeocodingResponseImpl>
    implements _$$ReverseGeocodingResponseImplCopyWith<$Res> {
  __$$ReverseGeocodingResponseImplCopyWithImpl(
      _$ReverseGeocodingResponseImpl _value,
      $Res Function(_$ReverseGeocodingResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? results = null,
  }) {
    return _then(_$ReverseGeocodingResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReverseGeocodingResponseImpl implements _ReverseGeocodingResponse {
  const _$ReverseGeocodingResponseImpl(
      {required this.status, required final List<Result> results})
      : _results = results;

  factory _$ReverseGeocodingResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReverseGeocodingResponseImplFromJson(json);

  @override
  final Status status;
  final List<Result> _results;
  @override
  List<Result> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'ReverseGeocodingResponse(status: $status, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReverseGeocodingResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReverseGeocodingResponseImplCopyWith<_$ReverseGeocodingResponseImpl>
      get copyWith => __$$ReverseGeocodingResponseImplCopyWithImpl<
          _$ReverseGeocodingResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReverseGeocodingResponseImplToJson(
      this,
    );
  }
}

abstract class _ReverseGeocodingResponse implements ReverseGeocodingResponse {
  const factory _ReverseGeocodingResponse(
      {required final Status status,
      required final List<Result> results}) = _$ReverseGeocodingResponseImpl;

  factory _ReverseGeocodingResponse.fromJson(Map<String, dynamic> json) =
      _$ReverseGeocodingResponseImpl.fromJson;

  @override
  Status get status;
  @override
  List<Result> get results;
  @override
  @JsonKey(ignore: true)
  _$$ReverseGeocodingResponseImplCopyWith<_$ReverseGeocodingResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  String get name => throw _privateConstructorUsedError;
  Code get code => throw _privateConstructorUsedError;
  Region get region => throw _privateConstructorUsedError;
  Land get land => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call({String name, Code code, Region region, Land land});

  $CodeCopyWith<$Res> get code;
  $RegionCopyWith<$Res> get region;
  $LandCopyWith<$Res> get land;
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? code = null,
    Object? region = null,
    Object? land = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as Code,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Region,
      land: null == land
          ? _value.land
          : land // ignore: cast_nullable_to_non_nullable
              as Land,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeCopyWith<$Res> get code {
    return $CodeCopyWith<$Res>(_value.code, (value) {
      return _then(_value.copyWith(code: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RegionCopyWith<$Res> get region {
    return $RegionCopyWith<$Res>(_value.region, (value) {
      return _then(_value.copyWith(region: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LandCopyWith<$Res> get land {
    return $LandCopyWith<$Res>(_value.land, (value) {
      return _then(_value.copyWith(land: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Code code, Region region, Land land});

  @override
  $CodeCopyWith<$Res> get code;
  @override
  $RegionCopyWith<$Res> get region;
  @override
  $LandCopyWith<$Res> get land;
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? code = null,
    Object? region = null,
    Object? land = null,
  }) {
    return _then(_$ResultImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as Code,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Region,
      land: null == land
          ? _value.land
          : land // ignore: cast_nullable_to_non_nullable
              as Land,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {required this.name,
      required this.code,
      required this.region,
      required this.land});

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final String name;
  @override
  final Code code;
  @override
  final Region region;
  @override
  final Land land;

  @override
  String toString() {
    return 'Result(name: $name, code: $code, region: $region, land: $land)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.land, land) || other.land == land));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, code, region, land);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {required final String name,
      required final Code code,
      required final Region region,
      required final Land land}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  String get name;
  @override
  Code get code;
  @override
  Region get region;
  @override
  Land get land;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Code _$CodeFromJson(Map<String, dynamic> json) {
  return _Code.fromJson(json);
}

/// @nodoc
mixin _$Code {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get mappingId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CodeCopyWith<Code> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeCopyWith<$Res> {
  factory $CodeCopyWith(Code value, $Res Function(Code) then) =
      _$CodeCopyWithImpl<$Res, Code>;
  @useResult
  $Res call({String id, String type, String mappingId});
}

/// @nodoc
class _$CodeCopyWithImpl<$Res, $Val extends Code>
    implements $CodeCopyWith<$Res> {
  _$CodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? mappingId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      mappingId: null == mappingId
          ? _value.mappingId
          : mappingId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CodeImplCopyWith<$Res> implements $CodeCopyWith<$Res> {
  factory _$$CodeImplCopyWith(
          _$CodeImpl value, $Res Function(_$CodeImpl) then) =
      __$$CodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String type, String mappingId});
}

/// @nodoc
class __$$CodeImplCopyWithImpl<$Res>
    extends _$CodeCopyWithImpl<$Res, _$CodeImpl>
    implements _$$CodeImplCopyWith<$Res> {
  __$$CodeImplCopyWithImpl(_$CodeImpl _value, $Res Function(_$CodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? mappingId = null,
  }) {
    return _then(_$CodeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      mappingId: null == mappingId
          ? _value.mappingId
          : mappingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CodeImpl implements _Code {
  const _$CodeImpl(
      {required this.id, required this.type, required this.mappingId});

  factory _$CodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$CodeImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String mappingId;

  @override
  String toString() {
    return 'Code(id: $id, type: $type, mappingId: $mappingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.mappingId, mappingId) ||
                other.mappingId == mappingId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, mappingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeImplCopyWith<_$CodeImpl> get copyWith =>
      __$$CodeImplCopyWithImpl<_$CodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CodeImplToJson(
      this,
    );
  }
}

abstract class _Code implements Code {
  const factory _Code(
      {required final String id,
      required final String type,
      required final String mappingId}) = _$CodeImpl;

  factory _Code.fromJson(Map<String, dynamic> json) = _$CodeImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  String get mappingId;
  @override
  @JsonKey(ignore: true)
  _$$CodeImplCopyWith<_$CodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Land _$LandFromJson(Map<String, dynamic> json) {
  return _Land.fromJson(json);
}

/// @nodoc
mixin _$Land {
  String get type => throw _privateConstructorUsedError;
  String get number1 => throw _privateConstructorUsedError;
  String get number2 => throw _privateConstructorUsedError;
  Addition get addition0 => throw _privateConstructorUsedError;
  Addition get addition1 => throw _privateConstructorUsedError;
  Addition get addition2 => throw _privateConstructorUsedError;
  Addition get addition3 => throw _privateConstructorUsedError;
  Addition get addition4 => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Coords get coords => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LandCopyWith<Land> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LandCopyWith<$Res> {
  factory $LandCopyWith(Land value, $Res Function(Land) then) =
      _$LandCopyWithImpl<$Res, Land>;
  @useResult
  $Res call(
      {String type,
      String number1,
      String number2,
      Addition addition0,
      Addition addition1,
      Addition addition2,
      Addition addition3,
      Addition addition4,
      String name,
      Coords coords});

  $AdditionCopyWith<$Res> get addition0;
  $AdditionCopyWith<$Res> get addition1;
  $AdditionCopyWith<$Res> get addition2;
  $AdditionCopyWith<$Res> get addition3;
  $AdditionCopyWith<$Res> get addition4;
  $CoordsCopyWith<$Res> get coords;
}

/// @nodoc
class _$LandCopyWithImpl<$Res, $Val extends Land>
    implements $LandCopyWith<$Res> {
  _$LandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? number1 = null,
    Object? number2 = null,
    Object? addition0 = null,
    Object? addition1 = null,
    Object? addition2 = null,
    Object? addition3 = null,
    Object? addition4 = null,
    Object? name = null,
    Object? coords = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      number1: null == number1
          ? _value.number1
          : number1 // ignore: cast_nullable_to_non_nullable
              as String,
      number2: null == number2
          ? _value.number2
          : number2 // ignore: cast_nullable_to_non_nullable
              as String,
      addition0: null == addition0
          ? _value.addition0
          : addition0 // ignore: cast_nullable_to_non_nullable
              as Addition,
      addition1: null == addition1
          ? _value.addition1
          : addition1 // ignore: cast_nullable_to_non_nullable
              as Addition,
      addition2: null == addition2
          ? _value.addition2
          : addition2 // ignore: cast_nullable_to_non_nullable
              as Addition,
      addition3: null == addition3
          ? _value.addition3
          : addition3 // ignore: cast_nullable_to_non_nullable
              as Addition,
      addition4: null == addition4
          ? _value.addition4
          : addition4 // ignore: cast_nullable_to_non_nullable
              as Addition,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coords: null == coords
          ? _value.coords
          : coords // ignore: cast_nullable_to_non_nullable
              as Coords,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AdditionCopyWith<$Res> get addition0 {
    return $AdditionCopyWith<$Res>(_value.addition0, (value) {
      return _then(_value.copyWith(addition0: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AdditionCopyWith<$Res> get addition1 {
    return $AdditionCopyWith<$Res>(_value.addition1, (value) {
      return _then(_value.copyWith(addition1: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AdditionCopyWith<$Res> get addition2 {
    return $AdditionCopyWith<$Res>(_value.addition2, (value) {
      return _then(_value.copyWith(addition2: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AdditionCopyWith<$Res> get addition3 {
    return $AdditionCopyWith<$Res>(_value.addition3, (value) {
      return _then(_value.copyWith(addition3: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AdditionCopyWith<$Res> get addition4 {
    return $AdditionCopyWith<$Res>(_value.addition4, (value) {
      return _then(_value.copyWith(addition4: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordsCopyWith<$Res> get coords {
    return $CoordsCopyWith<$Res>(_value.coords, (value) {
      return _then(_value.copyWith(coords: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LandImplCopyWith<$Res> implements $LandCopyWith<$Res> {
  factory _$$LandImplCopyWith(
          _$LandImpl value, $Res Function(_$LandImpl) then) =
      __$$LandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      String number1,
      String number2,
      Addition addition0,
      Addition addition1,
      Addition addition2,
      Addition addition3,
      Addition addition4,
      String name,
      Coords coords});

  @override
  $AdditionCopyWith<$Res> get addition0;
  @override
  $AdditionCopyWith<$Res> get addition1;
  @override
  $AdditionCopyWith<$Res> get addition2;
  @override
  $AdditionCopyWith<$Res> get addition3;
  @override
  $AdditionCopyWith<$Res> get addition4;
  @override
  $CoordsCopyWith<$Res> get coords;
}

/// @nodoc
class __$$LandImplCopyWithImpl<$Res>
    extends _$LandCopyWithImpl<$Res, _$LandImpl>
    implements _$$LandImplCopyWith<$Res> {
  __$$LandImplCopyWithImpl(_$LandImpl _value, $Res Function(_$LandImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? number1 = null,
    Object? number2 = null,
    Object? addition0 = null,
    Object? addition1 = null,
    Object? addition2 = null,
    Object? addition3 = null,
    Object? addition4 = null,
    Object? name = null,
    Object? coords = null,
  }) {
    return _then(_$LandImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      number1: null == number1
          ? _value.number1
          : number1 // ignore: cast_nullable_to_non_nullable
              as String,
      number2: null == number2
          ? _value.number2
          : number2 // ignore: cast_nullable_to_non_nullable
              as String,
      addition0: null == addition0
          ? _value.addition0
          : addition0 // ignore: cast_nullable_to_non_nullable
              as Addition,
      addition1: null == addition1
          ? _value.addition1
          : addition1 // ignore: cast_nullable_to_non_nullable
              as Addition,
      addition2: null == addition2
          ? _value.addition2
          : addition2 // ignore: cast_nullable_to_non_nullable
              as Addition,
      addition3: null == addition3
          ? _value.addition3
          : addition3 // ignore: cast_nullable_to_non_nullable
              as Addition,
      addition4: null == addition4
          ? _value.addition4
          : addition4 // ignore: cast_nullable_to_non_nullable
              as Addition,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coords: null == coords
          ? _value.coords
          : coords // ignore: cast_nullable_to_non_nullable
              as Coords,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LandImpl implements _Land {
  const _$LandImpl(
      {required this.type,
      required this.number1,
      required this.number2,
      required this.addition0,
      required this.addition1,
      required this.addition2,
      required this.addition3,
      required this.addition4,
      required this.name,
      required this.coords});

  factory _$LandImpl.fromJson(Map<String, dynamic> json) =>
      _$$LandImplFromJson(json);

  @override
  final String type;
  @override
  final String number1;
  @override
  final String number2;
  @override
  final Addition addition0;
  @override
  final Addition addition1;
  @override
  final Addition addition2;
  @override
  final Addition addition3;
  @override
  final Addition addition4;
  @override
  final String name;
  @override
  final Coords coords;

  @override
  String toString() {
    return 'Land(type: $type, number1: $number1, number2: $number2, addition0: $addition0, addition1: $addition1, addition2: $addition2, addition3: $addition3, addition4: $addition4, name: $name, coords: $coords)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LandImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.number1, number1) || other.number1 == number1) &&
            (identical(other.number2, number2) || other.number2 == number2) &&
            (identical(other.addition0, addition0) ||
                other.addition0 == addition0) &&
            (identical(other.addition1, addition1) ||
                other.addition1 == addition1) &&
            (identical(other.addition2, addition2) ||
                other.addition2 == addition2) &&
            (identical(other.addition3, addition3) ||
                other.addition3 == addition3) &&
            (identical(other.addition4, addition4) ||
                other.addition4 == addition4) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.coords, coords) || other.coords == coords));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, number1, number2,
      addition0, addition1, addition2, addition3, addition4, name, coords);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LandImplCopyWith<_$LandImpl> get copyWith =>
      __$$LandImplCopyWithImpl<_$LandImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LandImplToJson(
      this,
    );
  }
}

abstract class _Land implements Land {
  const factory _Land(
      {required final String type,
      required final String number1,
      required final String number2,
      required final Addition addition0,
      required final Addition addition1,
      required final Addition addition2,
      required final Addition addition3,
      required final Addition addition4,
      required final String name,
      required final Coords coords}) = _$LandImpl;

  factory _Land.fromJson(Map<String, dynamic> json) = _$LandImpl.fromJson;

  @override
  String get type;
  @override
  String get number1;
  @override
  String get number2;
  @override
  Addition get addition0;
  @override
  Addition get addition1;
  @override
  Addition get addition2;
  @override
  Addition get addition3;
  @override
  Addition get addition4;
  @override
  String get name;
  @override
  Coords get coords;
  @override
  @JsonKey(ignore: true)
  _$$LandImplCopyWith<_$LandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Addition _$AdditionFromJson(Map<String, dynamic> json) {
  return _Addition.fromJson(json);
}

/// @nodoc
mixin _$Addition {
  String get type => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdditionCopyWith<Addition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionCopyWith<$Res> {
  factory $AdditionCopyWith(Addition value, $Res Function(Addition) then) =
      _$AdditionCopyWithImpl<$Res, Addition>;
  @useResult
  $Res call({String type, String value});
}

/// @nodoc
class _$AdditionCopyWithImpl<$Res, $Val extends Addition>
    implements $AdditionCopyWith<$Res> {
  _$AdditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdditionImplCopyWith<$Res>
    implements $AdditionCopyWith<$Res> {
  factory _$$AdditionImplCopyWith(
          _$AdditionImpl value, $Res Function(_$AdditionImpl) then) =
      __$$AdditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String value});
}

/// @nodoc
class __$$AdditionImplCopyWithImpl<$Res>
    extends _$AdditionCopyWithImpl<$Res, _$AdditionImpl>
    implements _$$AdditionImplCopyWith<$Res> {
  __$$AdditionImplCopyWithImpl(
      _$AdditionImpl _value, $Res Function(_$AdditionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_$AdditionImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdditionImpl implements _Addition {
  const _$AdditionImpl({required this.type, required this.value});

  factory _$AdditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdditionImplFromJson(json);

  @override
  final String type;
  @override
  final String value;

  @override
  String toString() {
    return 'Addition(type: $type, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdditionImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdditionImplCopyWith<_$AdditionImpl> get copyWith =>
      __$$AdditionImplCopyWithImpl<_$AdditionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdditionImplToJson(
      this,
    );
  }
}

abstract class _Addition implements Addition {
  const factory _Addition(
      {required final String type,
      required final String value}) = _$AdditionImpl;

  factory _Addition.fromJson(Map<String, dynamic> json) =
      _$AdditionImpl.fromJson;

  @override
  String get type;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$AdditionImplCopyWith<_$AdditionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Coords _$CoordsFromJson(Map<String, dynamic> json) {
  return _Coords.fromJson(json);
}

/// @nodoc
mixin _$Coords {
  Center get center => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoordsCopyWith<Coords> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordsCopyWith<$Res> {
  factory $CoordsCopyWith(Coords value, $Res Function(Coords) then) =
      _$CoordsCopyWithImpl<$Res, Coords>;
  @useResult
  $Res call({Center center});

  $CenterCopyWith<$Res> get center;
}

/// @nodoc
class _$CoordsCopyWithImpl<$Res, $Val extends Coords>
    implements $CoordsCopyWith<$Res> {
  _$CoordsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? center = null,
  }) {
    return _then(_value.copyWith(
      center: null == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as Center,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CenterCopyWith<$Res> get center {
    return $CenterCopyWith<$Res>(_value.center, (value) {
      return _then(_value.copyWith(center: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoordsImplCopyWith<$Res> implements $CoordsCopyWith<$Res> {
  factory _$$CoordsImplCopyWith(
          _$CoordsImpl value, $Res Function(_$CoordsImpl) then) =
      __$$CoordsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Center center});

  @override
  $CenterCopyWith<$Res> get center;
}

/// @nodoc
class __$$CoordsImplCopyWithImpl<$Res>
    extends _$CoordsCopyWithImpl<$Res, _$CoordsImpl>
    implements _$$CoordsImplCopyWith<$Res> {
  __$$CoordsImplCopyWithImpl(
      _$CoordsImpl _value, $Res Function(_$CoordsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? center = null,
  }) {
    return _then(_$CoordsImpl(
      center: null == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as Center,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoordsImpl implements _Coords {
  const _$CoordsImpl({required this.center});

  factory _$CoordsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoordsImplFromJson(json);

  @override
  final Center center;

  @override
  String toString() {
    return 'Coords(center: $center)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoordsImpl &&
            (identical(other.center, center) || other.center == center));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, center);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoordsImplCopyWith<_$CoordsImpl> get copyWith =>
      __$$CoordsImplCopyWithImpl<_$CoordsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoordsImplToJson(
      this,
    );
  }
}

abstract class _Coords implements Coords {
  const factory _Coords({required final Center center}) = _$CoordsImpl;

  factory _Coords.fromJson(Map<String, dynamic> json) = _$CoordsImpl.fromJson;

  @override
  Center get center;
  @override
  @JsonKey(ignore: true)
  _$$CoordsImplCopyWith<_$CoordsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Center _$CenterFromJson(Map<String, dynamic> json) {
  return _Center.fromJson(json);
}

/// @nodoc
mixin _$Center {
  String get crs => throw _privateConstructorUsedError;
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CenterCopyWith<Center> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CenterCopyWith<$Res> {
  factory $CenterCopyWith(Center value, $Res Function(Center) then) =
      _$CenterCopyWithImpl<$Res, Center>;
  @useResult
  $Res call({String crs, double x, double y});
}

/// @nodoc
class _$CenterCopyWithImpl<$Res, $Val extends Center>
    implements $CenterCopyWith<$Res> {
  _$CenterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crs = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      crs: null == crs
          ? _value.crs
          : crs // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CenterImplCopyWith<$Res> implements $CenterCopyWith<$Res> {
  factory _$$CenterImplCopyWith(
          _$CenterImpl value, $Res Function(_$CenterImpl) then) =
      __$$CenterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String crs, double x, double y});
}

/// @nodoc
class __$$CenterImplCopyWithImpl<$Res>
    extends _$CenterCopyWithImpl<$Res, _$CenterImpl>
    implements _$$CenterImplCopyWith<$Res> {
  __$$CenterImplCopyWithImpl(
      _$CenterImpl _value, $Res Function(_$CenterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crs = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$CenterImpl(
      crs: null == crs
          ? _value.crs
          : crs // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CenterImpl implements _Center {
  const _$CenterImpl({required this.crs, required this.x, required this.y});

  factory _$CenterImpl.fromJson(Map<String, dynamic> json) =>
      _$$CenterImplFromJson(json);

  @override
  final String crs;
  @override
  final double x;
  @override
  final double y;

  @override
  String toString() {
    return 'Center(crs: $crs, x: $x, y: $y)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CenterImpl &&
            (identical(other.crs, crs) || other.crs == crs) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, crs, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CenterImplCopyWith<_$CenterImpl> get copyWith =>
      __$$CenterImplCopyWithImpl<_$CenterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CenterImplToJson(
      this,
    );
  }
}

abstract class _Center implements Center {
  const factory _Center(
      {required final String crs,
      required final double x,
      required final double y}) = _$CenterImpl;

  factory _Center.fromJson(Map<String, dynamic> json) = _$CenterImpl.fromJson;

  @override
  String get crs;
  @override
  double get x;
  @override
  double get y;
  @override
  @JsonKey(ignore: true)
  _$$CenterImplCopyWith<_$CenterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Region _$RegionFromJson(Map<String, dynamic> json) {
  return _Region.fromJson(json);
}

/// @nodoc
mixin _$Region {
  Area get area0 => throw _privateConstructorUsedError;
  Area1 get area1 => throw _privateConstructorUsedError;
  Area get area2 => throw _privateConstructorUsedError;
  Area get area3 => throw _privateConstructorUsedError;
  Area get area4 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegionCopyWith<Region> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionCopyWith<$Res> {
  factory $RegionCopyWith(Region value, $Res Function(Region) then) =
      _$RegionCopyWithImpl<$Res, Region>;
  @useResult
  $Res call({Area area0, Area1 area1, Area area2, Area area3, Area area4});

  $AreaCopyWith<$Res> get area0;
  $Area1CopyWith<$Res> get area1;
  $AreaCopyWith<$Res> get area2;
  $AreaCopyWith<$Res> get area3;
  $AreaCopyWith<$Res> get area4;
}

/// @nodoc
class _$RegionCopyWithImpl<$Res, $Val extends Region>
    implements $RegionCopyWith<$Res> {
  _$RegionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area0 = null,
    Object? area1 = null,
    Object? area2 = null,
    Object? area3 = null,
    Object? area4 = null,
  }) {
    return _then(_value.copyWith(
      area0: null == area0
          ? _value.area0
          : area0 // ignore: cast_nullable_to_non_nullable
              as Area,
      area1: null == area1
          ? _value.area1
          : area1 // ignore: cast_nullable_to_non_nullable
              as Area1,
      area2: null == area2
          ? _value.area2
          : area2 // ignore: cast_nullable_to_non_nullable
              as Area,
      area3: null == area3
          ? _value.area3
          : area3 // ignore: cast_nullable_to_non_nullable
              as Area,
      area4: null == area4
          ? _value.area4
          : area4 // ignore: cast_nullable_to_non_nullable
              as Area,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AreaCopyWith<$Res> get area0 {
    return $AreaCopyWith<$Res>(_value.area0, (value) {
      return _then(_value.copyWith(area0: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $Area1CopyWith<$Res> get area1 {
    return $Area1CopyWith<$Res>(_value.area1, (value) {
      return _then(_value.copyWith(area1: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AreaCopyWith<$Res> get area2 {
    return $AreaCopyWith<$Res>(_value.area2, (value) {
      return _then(_value.copyWith(area2: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AreaCopyWith<$Res> get area3 {
    return $AreaCopyWith<$Res>(_value.area3, (value) {
      return _then(_value.copyWith(area3: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AreaCopyWith<$Res> get area4 {
    return $AreaCopyWith<$Res>(_value.area4, (value) {
      return _then(_value.copyWith(area4: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegionImplCopyWith<$Res> implements $RegionCopyWith<$Res> {
  factory _$$RegionImplCopyWith(
          _$RegionImpl value, $Res Function(_$RegionImpl) then) =
      __$$RegionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Area area0, Area1 area1, Area area2, Area area3, Area area4});

  @override
  $AreaCopyWith<$Res> get area0;
  @override
  $Area1CopyWith<$Res> get area1;
  @override
  $AreaCopyWith<$Res> get area2;
  @override
  $AreaCopyWith<$Res> get area3;
  @override
  $AreaCopyWith<$Res> get area4;
}

/// @nodoc
class __$$RegionImplCopyWithImpl<$Res>
    extends _$RegionCopyWithImpl<$Res, _$RegionImpl>
    implements _$$RegionImplCopyWith<$Res> {
  __$$RegionImplCopyWithImpl(
      _$RegionImpl _value, $Res Function(_$RegionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area0 = null,
    Object? area1 = null,
    Object? area2 = null,
    Object? area3 = null,
    Object? area4 = null,
  }) {
    return _then(_$RegionImpl(
      area0: null == area0
          ? _value.area0
          : area0 // ignore: cast_nullable_to_non_nullable
              as Area,
      area1: null == area1
          ? _value.area1
          : area1 // ignore: cast_nullable_to_non_nullable
              as Area1,
      area2: null == area2
          ? _value.area2
          : area2 // ignore: cast_nullable_to_non_nullable
              as Area,
      area3: null == area3
          ? _value.area3
          : area3 // ignore: cast_nullable_to_non_nullable
              as Area,
      area4: null == area4
          ? _value.area4
          : area4 // ignore: cast_nullable_to_non_nullable
              as Area,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegionImpl implements _Region {
  const _$RegionImpl(
      {required this.area0,
      required this.area1,
      required this.area2,
      required this.area3,
      required this.area4});

  factory _$RegionImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegionImplFromJson(json);

  @override
  final Area area0;
  @override
  final Area1 area1;
  @override
  final Area area2;
  @override
  final Area area3;
  @override
  final Area area4;

  @override
  String toString() {
    return 'Region(area0: $area0, area1: $area1, area2: $area2, area3: $area3, area4: $area4)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegionImpl &&
            (identical(other.area0, area0) || other.area0 == area0) &&
            (identical(other.area1, area1) || other.area1 == area1) &&
            (identical(other.area2, area2) || other.area2 == area2) &&
            (identical(other.area3, area3) || other.area3 == area3) &&
            (identical(other.area4, area4) || other.area4 == area4));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, area0, area1, area2, area3, area4);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegionImplCopyWith<_$RegionImpl> get copyWith =>
      __$$RegionImplCopyWithImpl<_$RegionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegionImplToJson(
      this,
    );
  }
}

abstract class _Region implements Region {
  const factory _Region(
      {required final Area area0,
      required final Area1 area1,
      required final Area area2,
      required final Area area3,
      required final Area area4}) = _$RegionImpl;

  factory _Region.fromJson(Map<String, dynamic> json) = _$RegionImpl.fromJson;

  @override
  Area get area0;
  @override
  Area1 get area1;
  @override
  Area get area2;
  @override
  Area get area3;
  @override
  Area get area4;
  @override
  @JsonKey(ignore: true)
  _$$RegionImplCopyWith<_$RegionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Area _$AreaFromJson(Map<String, dynamic> json) {
  return _Area.fromJson(json);
}

/// @nodoc
mixin _$Area {
  String get name => throw _privateConstructorUsedError;
  Coords get coords => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AreaCopyWith<Area> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaCopyWith<$Res> {
  factory $AreaCopyWith(Area value, $Res Function(Area) then) =
      _$AreaCopyWithImpl<$Res, Area>;
  @useResult
  $Res call({String name, Coords coords});

  $CoordsCopyWith<$Res> get coords;
}

/// @nodoc
class _$AreaCopyWithImpl<$Res, $Val extends Area>
    implements $AreaCopyWith<$Res> {
  _$AreaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? coords = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coords: null == coords
          ? _value.coords
          : coords // ignore: cast_nullable_to_non_nullable
              as Coords,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordsCopyWith<$Res> get coords {
    return $CoordsCopyWith<$Res>(_value.coords, (value) {
      return _then(_value.copyWith(coords: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AreaImplCopyWith<$Res> implements $AreaCopyWith<$Res> {
  factory _$$AreaImplCopyWith(
          _$AreaImpl value, $Res Function(_$AreaImpl) then) =
      __$$AreaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Coords coords});

  @override
  $CoordsCopyWith<$Res> get coords;
}

/// @nodoc
class __$$AreaImplCopyWithImpl<$Res>
    extends _$AreaCopyWithImpl<$Res, _$AreaImpl>
    implements _$$AreaImplCopyWith<$Res> {
  __$$AreaImplCopyWithImpl(_$AreaImpl _value, $Res Function(_$AreaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? coords = null,
  }) {
    return _then(_$AreaImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coords: null == coords
          ? _value.coords
          : coords // ignore: cast_nullable_to_non_nullable
              as Coords,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AreaImpl implements _Area {
  const _$AreaImpl({required this.name, required this.coords});

  factory _$AreaImpl.fromJson(Map<String, dynamic> json) =>
      _$$AreaImplFromJson(json);

  @override
  final String name;
  @override
  final Coords coords;

  @override
  String toString() {
    return 'Area(name: $name, coords: $coords)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AreaImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.coords, coords) || other.coords == coords));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, coords);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AreaImplCopyWith<_$AreaImpl> get copyWith =>
      __$$AreaImplCopyWithImpl<_$AreaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AreaImplToJson(
      this,
    );
  }
}

abstract class _Area implements Area {
  const factory _Area(
      {required final String name, required final Coords coords}) = _$AreaImpl;

  factory _Area.fromJson(Map<String, dynamic> json) = _$AreaImpl.fromJson;

  @override
  String get name;
  @override
  Coords get coords;
  @override
  @JsonKey(ignore: true)
  _$$AreaImplCopyWith<_$AreaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Area1 _$Area1FromJson(Map<String, dynamic> json) {
  return _Area1.fromJson(json);
}

/// @nodoc
mixin _$Area1 {
  String get name => throw _privateConstructorUsedError;
  Coords get coords => throw _privateConstructorUsedError;
  String get alias => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Area1CopyWith<Area1> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Area1CopyWith<$Res> {
  factory $Area1CopyWith(Area1 value, $Res Function(Area1) then) =
      _$Area1CopyWithImpl<$Res, Area1>;
  @useResult
  $Res call({String name, Coords coords, String alias});

  $CoordsCopyWith<$Res> get coords;
}

/// @nodoc
class _$Area1CopyWithImpl<$Res, $Val extends Area1>
    implements $Area1CopyWith<$Res> {
  _$Area1CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? coords = null,
    Object? alias = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coords: null == coords
          ? _value.coords
          : coords // ignore: cast_nullable_to_non_nullable
              as Coords,
      alias: null == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordsCopyWith<$Res> get coords {
    return $CoordsCopyWith<$Res>(_value.coords, (value) {
      return _then(_value.copyWith(coords: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$Area1ImplCopyWith<$Res> implements $Area1CopyWith<$Res> {
  factory _$$Area1ImplCopyWith(
          _$Area1Impl value, $Res Function(_$Area1Impl) then) =
      __$$Area1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Coords coords, String alias});

  @override
  $CoordsCopyWith<$Res> get coords;
}

/// @nodoc
class __$$Area1ImplCopyWithImpl<$Res>
    extends _$Area1CopyWithImpl<$Res, _$Area1Impl>
    implements _$$Area1ImplCopyWith<$Res> {
  __$$Area1ImplCopyWithImpl(
      _$Area1Impl _value, $Res Function(_$Area1Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? coords = null,
    Object? alias = null,
  }) {
    return _then(_$Area1Impl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coords: null == coords
          ? _value.coords
          : coords // ignore: cast_nullable_to_non_nullable
              as Coords,
      alias: null == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Area1Impl implements _Area1 {
  const _$Area1Impl(
      {required this.name, required this.coords, required this.alias});

  factory _$Area1Impl.fromJson(Map<String, dynamic> json) =>
      _$$Area1ImplFromJson(json);

  @override
  final String name;
  @override
  final Coords coords;
  @override
  final String alias;

  @override
  String toString() {
    return 'Area1(name: $name, coords: $coords, alias: $alias)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Area1Impl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.coords, coords) || other.coords == coords) &&
            (identical(other.alias, alias) || other.alias == alias));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, coords, alias);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Area1ImplCopyWith<_$Area1Impl> get copyWith =>
      __$$Area1ImplCopyWithImpl<_$Area1Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Area1ImplToJson(
      this,
    );
  }
}

abstract class _Area1 implements Area1 {
  const factory _Area1(
      {required final String name,
      required final Coords coords,
      required final String alias}) = _$Area1Impl;

  factory _Area1.fromJson(Map<String, dynamic> json) = _$Area1Impl.fromJson;

  @override
  String get name;
  @override
  Coords get coords;
  @override
  String get alias;
  @override
  @JsonKey(ignore: true)
  _$$Area1ImplCopyWith<_$Area1Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

Status _$StatusFromJson(Map<String, dynamic> json) {
  return _Status.fromJson(json);
}

/// @nodoc
mixin _$Status {
  int get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusCopyWith<Status> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res, Status>;
  @useResult
  $Res call({int code, String name, String message});
}

/// @nodoc
class _$StatusCopyWithImpl<$Res, $Val extends Status>
    implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatusImplCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$$StatusImplCopyWith(
          _$StatusImpl value, $Res Function(_$StatusImpl) then) =
      __$$StatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String name, String message});
}

/// @nodoc
class __$$StatusImplCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$StatusImpl>
    implements _$$StatusImplCopyWith<$Res> {
  __$$StatusImplCopyWithImpl(
      _$StatusImpl _value, $Res Function(_$StatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? message = null,
  }) {
    return _then(_$StatusImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatusImpl implements _Status {
  const _$StatusImpl(
      {required this.code, required this.name, required this.message});

  factory _$StatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatusImplFromJson(json);

  @override
  final int code;
  @override
  final String name;
  @override
  final String message;

  @override
  String toString() {
    return 'Status(code: $code, name: $name, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, name, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusImplCopyWith<_$StatusImpl> get copyWith =>
      __$$StatusImplCopyWithImpl<_$StatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatusImplToJson(
      this,
    );
  }
}

abstract class _Status implements Status {
  const factory _Status(
      {required final int code,
      required final String name,
      required final String message}) = _$StatusImpl;

  factory _Status.fromJson(Map<String, dynamic> json) = _$StatusImpl.fromJson;

  @override
  int get code;
  @override
  String get name;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$StatusImplCopyWith<_$StatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
