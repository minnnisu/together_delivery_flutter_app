import 'dart:convert';

PostSummaryModel postSummaryModelFromJson(String str) => PostSummaryModel.fromJson(json.decode(str));

String postSummaryModelToJson(PostSummaryModel data) => json.encode(data.toJson());

class PostSummaryModel {
  int id;
  String nickname;
  String content;
  String restaurantName;
  String categoryCode;
  int deliveryFee;
  int minOrderFee;
  MeetLocation meetLocation;
  bool status;
  DateTime createdAt;

  PostSummaryModel({
    required this.id,
    required this.nickname,
    required this.content,
    required this.restaurantName,
    required this.categoryCode,
    required this.deliveryFee,
    required this.minOrderFee,
    required this.meetLocation,
    required this.status,
    required this.createdAt,
  });

  PostSummaryModel copyWith({
    int? id,
    String? nickname,
    String? content,
    String? restaurantName,
    String? categoryCode,
    int? deliveryFee,
    int? minOrderFee,
    MeetLocation? meetLocation,
    bool? status,
    DateTime? createdAt,
  }) =>
      PostSummaryModel(
        id: id ?? this.id,
        nickname: nickname ?? this.nickname,
        content: content ?? this.content,
        restaurantName: restaurantName ?? this.restaurantName,
        categoryCode: categoryCode ?? this.categoryCode,
        deliveryFee: deliveryFee ?? this.deliveryFee,
        minOrderFee: minOrderFee ?? this.minOrderFee,
        meetLocation: meetLocation ?? this.meetLocation,
        status: status ?? this.status,
        createdAt: createdAt ?? this.createdAt,
      );

  factory PostSummaryModel.fromJson(Map<String, dynamic> json) => PostSummaryModel(
    id: json["id"],
    nickname: json["nickname"],
    content: json["content"],
    restaurantName: json["restaurantName"],
    categoryCode: json["categoryCode"],
    deliveryFee: json["deliveryFee"],
    minOrderFee: json["minOrderFee"],
    meetLocation: MeetLocation.fromJson(json["meetLocation"]),
    status: json["status"],
    createdAt: DateTime.parse(json["createdAt"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "nickname": nickname,
    "content": content,
    "restaurantName": restaurantName,
    "categoryCode": categoryCode,
    "deliveryFee": deliveryFee,
    "minOrderFee": minOrderFee,
    "meetLocation": meetLocation.toJson(),
    "status": status,
    "createdAt": createdAt.toIso8601String(),
  };
}

class MeetLocation {
  String address;
  dynamic shortAddress;
  double latitude;
  double longitude;

  MeetLocation({
    required this.address,
    required this.shortAddress,
    required this.latitude,
    required this.longitude,
  });

  MeetLocation copyWith({
    String? address,
    dynamic shortAddress,
    double? latitude,
    double? longitude,
  }) =>
      MeetLocation(
        address: address ?? this.address,
        shortAddress: shortAddress ?? this.shortAddress,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
      );

  factory MeetLocation.fromJson(Map<String, dynamic> json) => MeetLocation(
    address: json["address"],
    shortAddress: json["shortAddress"],
    latitude: json["latitude"]?.toDouble(),
    longitude: json["longitude"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "address": address,
    "shortAddress": shortAddress,
    "latitude": latitude,
    "longitude": longitude,
  };
}
