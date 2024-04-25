import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'reverse_geocoding_response.freezed.dart';
part 'reverse_geocoding_response.g.dart';

ReverseGeocodingResponse reverseGeocodingResponseFromJson(String str) => ReverseGeocodingResponse.fromJson(json.decode(str));

String reverseGeocodingResponseToJson(ReverseGeocodingResponse data) => json.encode(data.toJson());

@freezed
class ReverseGeocodingResponse with _$ReverseGeocodingResponse {
  const factory ReverseGeocodingResponse({
    required Status status,
    required List<Result> results,
  }) = _ReverseGeocodingResponse;

  factory ReverseGeocodingResponse.fromJson(Map<String, dynamic> json) => _$ReverseGeocodingResponseFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required String name,
    required Code code,
    required Region region,
    required Land land,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Code with _$Code {
  const factory Code({
    required String id,
    required String type,
    required String mappingId,
  }) = _Code;

  factory Code.fromJson(Map<String, dynamic> json) => _$CodeFromJson(json);
}

@freezed
class Land with _$Land {
  const factory Land({
    required String type,
    required String number1,
    required String number2,
    required Addition addition0,
    required Addition addition1,
    required Addition addition2,
    required Addition addition3,
    required Addition addition4,
    required String name,
    required Coords coords,
  }) = _Land;

  factory Land.fromJson(Map<String, dynamic> json) => _$LandFromJson(json);
}

@freezed
class Addition with _$Addition {
  const factory Addition({
    required String type,
    required String value,
  }) = _Addition;

  factory Addition.fromJson(Map<String, dynamic> json) => _$AdditionFromJson(json);
}

@freezed
class Coords with _$Coords {
  const factory Coords({
    required Center center,
  }) = _Coords;

  factory Coords.fromJson(Map<String, dynamic> json) => _$CoordsFromJson(json);
}

@freezed
class Center with _$Center {
  const factory Center({
    required String crs,
    required double x,
    required double y,
  }) = _Center;

  factory Center.fromJson(Map<String, dynamic> json) => _$CenterFromJson(json);
}

@freezed
class Region with _$Region {
  const factory Region({
    required Area area0,
    required Area1 area1,
    required Area area2,
    required Area area3,
    required Area area4,
  }) = _Region;

  factory Region.fromJson(Map<String, dynamic> json) => _$RegionFromJson(json);
}

@freezed
class Area with _$Area {
  const factory Area({
    required String name,
    required Coords coords,
  }) = _Area;

  factory Area.fromJson(Map<String, dynamic> json) => _$AreaFromJson(json);
}

@freezed
class Area1 with _$Area1 {
  const factory Area1({
    required String name,
    required Coords coords,
    required String alias,
  }) = _Area1;

  factory Area1.fromJson(Map<String, dynamic> json) => _$Area1FromJson(json);
}

@freezed
class Status with _$Status {
  const factory Status({
    required int code,
    required String name,
    required String message,
  }) = _Status;

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}
