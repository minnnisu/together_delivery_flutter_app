import 'dart:convert';

ReverseGeocodingResponseModel reverseGeocodingResponseModelFromJson(String str) => ReverseGeocodingResponseModel.fromJson(json.decode(str));

String reverseGeocodingResponseModelToJson(ReverseGeocodingResponseModel data) => json.encode(data.toJson());

class ReverseGeocodingResponseModel {
  Status status;
  List<Result> results;

  ReverseGeocodingResponseModel({
    required this.status,
    required this.results,
  });

  ReverseGeocodingResponseModel copyWith({
    Status? status,
    List<Result>? results,
  }) =>
      ReverseGeocodingResponseModel(
        status: status ?? this.status,
        results: results ?? this.results,
      );

  factory ReverseGeocodingResponseModel.fromJson(Map<String, dynamic> json) => ReverseGeocodingResponseModel(
    status: Status.fromJson(json["status"]),
    results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status.toJson(),
    "results": List<dynamic>.from(results.map((x) => x.toJson())),
  };
}

class Result {
  String name;
  Code code;
  Region region;
  Land? land;

  Result({
    required this.name,
    required this.code,
    required this.region,
    this.land,
  });

  Result copyWith({
    String? name,
    Code? code,
    Region? region,
    Land? land,
  }) =>
      Result(
        name: name ?? this.name,
        code: code ?? this.code,
        region: region ?? this.region,
        land: land ?? this.land,
      );

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    name: json["name"],
    code: Code.fromJson(json["code"]),
    region: Region.fromJson(json["region"]),
    land: json["land"] == null ? null : Land.fromJson(json["land"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "code": code.toJson(),
    "region": region.toJson(),
    "land": land?.toJson(),
  };
}

class Code {
  String id;
  String type;
  String mappingId;

  Code({
    required this.id,
    required this.type,
    required this.mappingId,
  });

  Code copyWith({
    String? id,
    String? type,
    String? mappingId,
  }) =>
      Code(
        id: id ?? this.id,
        type: type ?? this.type,
        mappingId: mappingId ?? this.mappingId,
      );

  factory Code.fromJson(Map<String, dynamic> json) => Code(
    id: json["id"],
    type: json["type"],
    mappingId: json["mappingId"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "type": type,
    "mappingId": mappingId,
  };
}

class Land {
  String type;
  String number1;
  String number2;
  Addition addition0;
  Addition addition1;
  Addition addition2;
  Addition addition3;
  Addition addition4;
  Coords coords;
  String? name;

  Land({
    required this.type,
    required this.number1,
    required this.number2,
    required this.addition0,
    required this.addition1,
    required this.addition2,
    required this.addition3,
    required this.addition4,
    required this.coords,
    this.name,
  });

  Land copyWith({
    String? type,
    String? number1,
    String? number2,
    Addition? addition0,
    Addition? addition1,
    Addition? addition2,
    Addition? addition3,
    Addition? addition4,
    Coords? coords,
    String? name,
  }) =>
      Land(
        type: type ?? this.type,
        number1: number1 ?? this.number1,
        number2: number2 ?? this.number2,
        addition0: addition0 ?? this.addition0,
        addition1: addition1 ?? this.addition1,
        addition2: addition2 ?? this.addition2,
        addition3: addition3 ?? this.addition3,
        addition4: addition4 ?? this.addition4,
        coords: coords ?? this.coords,
        name: name ?? this.name,
      );

  factory Land.fromJson(Map<String, dynamic> json) => Land(
    type: json["type"],
    number1: json["number1"],
    number2: json["number2"],
    addition0: Addition.fromJson(json["addition0"]),
    addition1: Addition.fromJson(json["addition1"]),
    addition2: Addition.fromJson(json["addition2"]),
    addition3: Addition.fromJson(json["addition3"]),
    addition4: Addition.fromJson(json["addition4"]),
    coords: Coords.fromJson(json["coords"]),
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "number1": number1,
    "number2": number2,
    "addition0": addition0.toJson(),
    "addition1": addition1.toJson(),
    "addition2": addition2.toJson(),
    "addition3": addition3.toJson(),
    "addition4": addition4.toJson(),
    "coords": coords.toJson(),
    "name": name,
  };
}

class Addition {
  String type;
  String value;

  Addition({
    required this.type,
    required this.value,
  });

  Addition copyWith({
    String? type,
    String? value,
  }) =>
      Addition(
        type: type ?? this.type,
        value: value ?? this.value,
      );

  factory Addition.fromJson(Map<String, dynamic> json) => Addition(
    type: json["type"],
    value: json["value"],
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "value": value,
  };
}

class Coords {
  Center center;

  Coords({
    required this.center,
  });

  Coords copyWith({
    Center? center,
  }) =>
      Coords(
        center: center ?? this.center,
      );

  factory Coords.fromJson(Map<String, dynamic> json) => Coords(
    center: Center.fromJson(json["center"]),
  );

  Map<String, dynamic> toJson() => {
    "center": center.toJson(),
  };
}

class Center {
  Crs crs;
  double x;
  double y;

  Center({
    required this.crs,
    required this.x,
    required this.y,
  });

  Center copyWith({
    Crs? crs,
    double? x,
    double? y,
  }) =>
      Center(
        crs: crs ?? this.crs,
        x: x ?? this.x,
        y: y ?? this.y,
      );

  factory Center.fromJson(Map<String, dynamic> json) => Center(
    crs: crsValues.map[json["crs"]]!,
    x: json["x"]?.toDouble(),
    y: json["y"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "crs": crsValues.reverse[crs],
    "x": x,
    "y": y,
  };
}

enum Crs {
  EMPTY,
  EPSG_4326
}

final crsValues = EnumValues({
  "": Crs.EMPTY,
  "EPSG:4326": Crs.EPSG_4326
});

class Region {
  Area area0;
  Area1 area1;
  Area area2;
  Area area3;
  Area area4;

  Region({
    required this.area0,
    required this.area1,
    required this.area2,
    required this.area3,
    required this.area4,
  });

  Region copyWith({
    Area? area0,
    Area1? area1,
    Area? area2,
    Area? area3,
    Area? area4,
  }) =>
      Region(
        area0: area0 ?? this.area0,
        area1: area1 ?? this.area1,
        area2: area2 ?? this.area2,
        area3: area3 ?? this.area3,
        area4: area4 ?? this.area4,
      );

  factory Region.fromJson(Map<String, dynamic> json) => Region(
    area0: Area.fromJson(json["area0"]),
    area1: Area1.fromJson(json["area1"]),
    area2: Area.fromJson(json["area2"]),
    area3: Area.fromJson(json["area3"]),
    area4: Area.fromJson(json["area4"]),
  );

  Map<String, dynamic> toJson() => {
    "area0": area0.toJson(),
    "area1": area1.toJson(),
    "area2": area2.toJson(),
    "area3": area3.toJson(),
    "area4": area4.toJson(),
  };
}

class Area {
  String name;
  Coords coords;

  Area({
    required this.name,
    required this.coords,
  });

  Area copyWith({
    String? name,
    Coords? coords,
  }) =>
      Area(
        name: name ?? this.name,
        coords: coords ?? this.coords,
      );

  factory Area.fromJson(Map<String, dynamic> json) => Area(
    name: json["name"],
    coords: Coords.fromJson(json["coords"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "coords": coords.toJson(),
  };
}

class Area1 {
  String name;
  Coords coords;
  String alias;

  Area1({
    required this.name,
    required this.coords,
    required this.alias,
  });

  Area1 copyWith({
    String? name,
    Coords? coords,
    String? alias,
  }) =>
      Area1(
        name: name ?? this.name,
        coords: coords ?? this.coords,
        alias: alias ?? this.alias,
      );

  factory Area1.fromJson(Map<String, dynamic> json) => Area1(
    name: json["name"],
    coords: Coords.fromJson(json["coords"]),
    alias: json["alias"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "coords": coords.toJson(),
    "alias": alias,
  };
}

class Status {
  int code;
  String name;
  String message;

  Status({
    required this.code,
    required this.name,
    required this.message,
  });

  Status copyWith({
    int? code,
    String? name,
    String? message,
  }) =>
      Status(
        code: code ?? this.code,
        name: name ?? this.name,
        message: message ?? this.message,
      );

  factory Status.fromJson(Map<String, dynamic> json) => Status(
    code: json["code"],
    name: json["name"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "name": name,
    "message": message,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
