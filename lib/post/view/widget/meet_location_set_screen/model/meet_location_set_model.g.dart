// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meet_location_set_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeetLocationSetModelImpl _$$MeetLocationSetModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MeetLocationSetModelImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      roadAddr: json['roadAddr'] as String,
    );

Map<String, dynamic> _$$MeetLocationSetModelImplToJson(
        _$MeetLocationSetModelImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'roadAddr': instance.roadAddr,
    };
