import 'dart:convert';

PostCreateResponseModel postCreateResponseModelFromJson(String str) => PostCreateResponseModel.fromJson(json.decode(str));

String postCreateResponseModelToJson(PostCreateResponseModel data) => json.encode(data.toJson());

class PostCreateResponseModel {
  Post post;
  ChatRoom chatRoom;

  PostCreateResponseModel({
    required this.post,
    required this.chatRoom,
  });

  PostCreateResponseModel copyWith({
    Post? post,
    ChatRoom? chatRoom,
  }) =>
      PostCreateResponseModel(
        post: post ?? this.post,
        chatRoom: chatRoom ?? this.chatRoom,
      );

  factory PostCreateResponseModel.fromJson(Map<String, dynamic> json) => PostCreateResponseModel(
    post: Post.fromJson(json["post"]),
    chatRoom: ChatRoom.fromJson(json["chatRoom"]),
  );

  Map<String, dynamic> toJson() => {
    "post": post.toJson(),
    "chatRoom": chatRoom.toJson(),
  };
}

class ChatRoom {
  int id;
  String creatorUsername;
  DateTime createdAt;

  ChatRoom({
    required this.id,
    required this.creatorUsername,
    required this.createdAt,
  });

  ChatRoom copyWith({
    int? id,
    String? creatorUsername,
    DateTime? createdAt,
  }) =>
      ChatRoom(
        id: id ?? this.id,
        creatorUsername: creatorUsername ?? this.creatorUsername,
        createdAt: createdAt ?? this.createdAt,
      );

  factory ChatRoom.fromJson(Map<String, dynamic> json) => ChatRoom(
    id: json["id"],
    creatorUsername: json["creatorUsername"],
    createdAt: DateTime.parse(json["createdAt"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "creatorUsername": creatorUsername,
    "createdAt": createdAt.toIso8601String(),
  };
}

class Post {
  int id;
  String username;
  String content;
  String restaurantName;
  String categoryCode;
  int deliveryFee;
  int minOrderFee;
  MeetLocation meetLocation;
  bool status;
  DateTime createdAt;
  DateTime updatedAt;
  List<dynamic> postImages;

  Post({
    required this.id,
    required this.username,
    required this.content,
    required this.restaurantName,
    required this.categoryCode,
    required this.deliveryFee,
    required this.minOrderFee,
    required this.meetLocation,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.postImages,
  });

  Post copyWith({
    int? id,
    String? username,
    String? content,
    String? restaurantName,
    String? categoryCode,
    int? deliveryFee,
    int? minOrderFee,
    MeetLocation? meetLocation,
    bool? status,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<dynamic>? postImages,
  }) =>
      Post(
        id: id ?? this.id,
        username: username ?? this.username,
        content: content ?? this.content,
        restaurantName: restaurantName ?? this.restaurantName,
        categoryCode: categoryCode ?? this.categoryCode,
        deliveryFee: deliveryFee ?? this.deliveryFee,
        minOrderFee: minOrderFee ?? this.minOrderFee,
        meetLocation: meetLocation ?? this.meetLocation,
        status: status ?? this.status,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        postImages: postImages ?? this.postImages,
      );

  factory Post.fromJson(Map<String, dynamic> json) => Post(
    id: json["id"],
    username: json["username"],
    content: json["content"],
    restaurantName: json["restaurantName"],
    categoryCode: json["categoryCode"],
    deliveryFee: json["deliveryFee"],
    minOrderFee: json["minOrderFee"],
    meetLocation: MeetLocation.fromJson(json["meetLocation"]),
    status: json["status"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    postImages: List<dynamic>.from(json["postImages"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "username": username,
    "content": content,
    "restaurantName": restaurantName,
    "categoryCode": categoryCode,
    "deliveryFee": deliveryFee,
    "minOrderFee": minOrderFee,
    "meetLocation": meetLocation.toJson(),
    "status": status,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "postImages": List<dynamic>.from(postImages.map((x) => x)),
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
