// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meet_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeetLocationModelImpl _$$MeetLocationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MeetLocationModelImpl(
      address: json['address'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$MeetLocationModelImplToJson(
        _$MeetLocationModelImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
