// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reverse_geocoding_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReverseGeocodingResponseImpl _$$ReverseGeocodingResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ReverseGeocodingResponseImpl(
      status: Status.fromJson(json['status'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>)
          .map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ReverseGeocodingResponseImplToJson(
        _$ReverseGeocodingResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'results': instance.results,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      name: json['name'] as String,
      code: Code.fromJson(json['code'] as Map<String, dynamic>),
      region: Region.fromJson(json['region'] as Map<String, dynamic>),
      land: Land.fromJson(json['land'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'region': instance.region,
      'land': instance.land,
    };

_$CodeImpl _$$CodeImplFromJson(Map<String, dynamic> json) => _$CodeImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      mappingId: json['mappingId'] as String,
    );

Map<String, dynamic> _$$CodeImplToJson(_$CodeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'mappingId': instance.mappingId,
    };

_$LandImpl _$$LandImplFromJson(Map<String, dynamic> json) => _$LandImpl(
      type: json['type'] as String,
      number1: json['number1'] as String,
      number2: json['number2'] as String,
      addition0: Addition.fromJson(json['addition0'] as Map<String, dynamic>),
      addition1: Addition.fromJson(json['addition1'] as Map<String, dynamic>),
      addition2: Addition.fromJson(json['addition2'] as Map<String, dynamic>),
      addition3: Addition.fromJson(json['addition3'] as Map<String, dynamic>),
      addition4: Addition.fromJson(json['addition4'] as Map<String, dynamic>),
      name: json['name'] as String,
      coords: Coords.fromJson(json['coords'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LandImplToJson(_$LandImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'number1': instance.number1,
      'number2': instance.number2,
      'addition0': instance.addition0,
      'addition1': instance.addition1,
      'addition2': instance.addition2,
      'addition3': instance.addition3,
      'addition4': instance.addition4,
      'name': instance.name,
      'coords': instance.coords,
    };

_$AdditionImpl _$$AdditionImplFromJson(Map<String, dynamic> json) =>
    _$AdditionImpl(
      type: json['type'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$AdditionImplToJson(_$AdditionImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
    };

_$CoordsImpl _$$CoordsImplFromJson(Map<String, dynamic> json) => _$CoordsImpl(
      center: Center.fromJson(json['center'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CoordsImplToJson(_$CoordsImpl instance) =>
    <String, dynamic>{
      'center': instance.center,
    };

_$CenterImpl _$$CenterImplFromJson(Map<String, dynamic> json) => _$CenterImpl(
      crs: json['crs'] as String,
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
    );

Map<String, dynamic> _$$CenterImplToJson(_$CenterImpl instance) =>
    <String, dynamic>{
      'crs': instance.crs,
      'x': instance.x,
      'y': instance.y,
    };

_$RegionImpl _$$RegionImplFromJson(Map<String, dynamic> json) => _$RegionImpl(
      area0: Area.fromJson(json['area0'] as Map<String, dynamic>),
      area1: Area1.fromJson(json['area1'] as Map<String, dynamic>),
      area2: Area.fromJson(json['area2'] as Map<String, dynamic>),
      area3: Area.fromJson(json['area3'] as Map<String, dynamic>),
      area4: Area.fromJson(json['area4'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RegionImplToJson(_$RegionImpl instance) =>
    <String, dynamic>{
      'area0': instance.area0,
      'area1': instance.area1,
      'area2': instance.area2,
      'area3': instance.area3,
      'area4': instance.area4,
    };

_$AreaImpl _$$AreaImplFromJson(Map<String, dynamic> json) => _$AreaImpl(
      name: json['name'] as String,
      coords: Coords.fromJson(json['coords'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AreaImplToJson(_$AreaImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'coords': instance.coords,
    };

_$Area1Impl _$$Area1ImplFromJson(Map<String, dynamic> json) => _$Area1Impl(
      name: json['name'] as String,
      coords: Coords.fromJson(json['coords'] as Map<String, dynamic>),
      alias: json['alias'] as String,
    );

Map<String, dynamic> _$$Area1ImplToJson(_$Area1Impl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'coords': instance.coords,
      'alias': instance.alias,
    };

_$StatusImpl _$$StatusImplFromJson(Map<String, dynamic> json) => _$StatusImpl(
      code: json['code'] as int,
      name: json['name'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$StatusImplToJson(_$StatusImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'message': instance.message,
    };
