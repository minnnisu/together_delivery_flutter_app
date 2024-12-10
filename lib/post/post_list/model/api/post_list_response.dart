import 'dart:convert';

PostListResponse postListResponseFromJson(String str) => PostListResponse.fromJson(json.decode(str));

String postListResponseToJson(PostListResponse data) => json.encode(data.toJson());

class PostListResponse {
  List<Post> posts;

  PostListResponse({
    required this.posts,
  });

  PostListResponse copyWith({
    List<Post>? posts,
  }) =>
      PostListResponse(
        posts: posts ?? this.posts,
      );

  factory PostListResponse.fromJson(Map<String, dynamic> json) => PostListResponse(
    posts: List<Post>.from(json["posts"].map((x) => Post.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "posts": List<dynamic>.from(posts.map((x) => x.toJson())),
  };
}

class Post {
  int id;
  String nickname;
  String? content;
  String restaurantName;
  String categoryCode;
  int deliveryFee;
  int minOrderFee;
  MeetLocation meetLocation;
  bool status;
  DateTime createdAt;
  DateTime? updatedAt;

  Post({
    required this.id,
    required this.nickname,
    this.content,
    required this.restaurantName,
    required this.categoryCode,
    required this.deliveryFee,
    required this.minOrderFee,
    required this.meetLocation,
    required this.status,
    required this.createdAt,
    this.updatedAt,
  });

  Post copyWith({
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
    dynamic updatedAt,
  }) =>
      Post(
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
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory Post.fromJson(Map<String, dynamic> json) => Post(
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
    updatedAt: json["updatedAt"],
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
    "updatedAt": updatedAt,
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