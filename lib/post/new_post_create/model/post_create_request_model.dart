import 'dart:convert';

PostCreateRequestModel postCreateRequestModelFromJson(String str) => PostCreateRequestModel.fromJson(json.decode(str));

String postCreateRequestModelToJson(PostCreateRequestModel data) => json.encode(data.toJson());

class PostCreateRequestModel {
  String? content;
  String restaurantName;
  String categoryCode;
  int deliveryFee;
  int minOrderFee;
  MeetLocation meetLocation;

  PostCreateRequestModel({
    this.content,
    required this.restaurantName,
    required this.categoryCode,
    required this.deliveryFee,
    required this.minOrderFee,
    required this.meetLocation,
  });

  PostCreateRequestModel copyWith({
    String? content,
    String? restaurantName,
    String? categoryCode,
    int? deliveryFee,
    int? minOrderFee,
    MeetLocation? meetLocation,
  }) =>
      PostCreateRequestModel(
        content: content,
        restaurantName: restaurantName ?? this.restaurantName,
        categoryCode: categoryCode ?? this.categoryCode,
        deliveryFee: deliveryFee ?? this.deliveryFee,
        minOrderFee: minOrderFee ?? this.minOrderFee,
        meetLocation: meetLocation ?? this.meetLocation,
      );

  factory PostCreateRequestModel.fromJson(Map<String, dynamic> json) => PostCreateRequestModel(
    content: json["content"],
    restaurantName: json["restaurantName"],
    categoryCode: json["categoryCode"],
    deliveryFee: json["deliveryFee"],
    minOrderFee: json["minOrderFee"],
    meetLocation: MeetLocation.fromJson(json["meetLocation"]),
  );

  Map<String, dynamic> toJson() => {
    "content": content,
    "restaurantName": restaurantName,
    "categoryCode": categoryCode,
    "deliveryFee": deliveryFee,
    "minOrderFee": minOrderFee,
    "meetLocation": meetLocation.toJson(),
  };
}

class MeetLocation {
  String address;
  String shortAddress;
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
    String? shortAddress,
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
