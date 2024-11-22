// To parse this JSON data, do
//
//     final postDetailResponseModel = postDetailResponseModelFromJson(jsonString);

import 'dart:convert';

PostDetailResponseModel postDetailResponseModelFromJson(String str) => PostDetailResponseModel.fromJson(json.decode(str));

String postDetailResponseModelToJson(PostDetailResponseModel data) => json.encode(data.toJson());

class PostDetailResponseModel {
  Post post;
  ChatRoom chatRoom;

  PostDetailResponseModel({
    required this.post,
    required this.chatRoom,
  });

  PostDetailResponseModel copyWith({
    Post? post,
    ChatRoom? chatRoom,
  }) =>
      PostDetailResponseModel(
        post: post ?? this.post,
        chatRoom: chatRoom ?? this.chatRoom,
      );

  factory PostDetailResponseModel.fromJson(Map<String, dynamic> json) => PostDetailResponseModel(
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
  DateTime createdAt;
  dynamic deletedAt;
  bool isChatRoomMember;

  ChatRoom({
    required this.id,
    required this.createdAt,
    required this.deletedAt,
    required this.isChatRoomMember,
  });

  ChatRoom copyWith({
    int? id,
    DateTime? createdAt,
    dynamic deletedAt,
    bool? isChatRoomMember,
  }) =>
      ChatRoom(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        deletedAt: deletedAt ?? this.deletedAt,
        isChatRoomMember: isChatRoomMember ?? this.isChatRoomMember,
      );

  factory ChatRoom.fromJson(Map<String, dynamic> json) => ChatRoom(
    id: json["id"],
    createdAt: DateTime.parse(json["createdAt"]),
    deletedAt: json["deletedAt"],
    isChatRoomMember: json["isChatRoomMember"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "createdAt": createdAt.toIso8601String(),
    "deletedAt": deletedAt,
    "isChatRoomMember": isChatRoomMember,
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
  List<PostImage> images;
  DateTime createdAt;
  DateTime updatedAt;
  bool isPostCreator;

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
    required this.images,
    required this.createdAt,
    required this.updatedAt,
    required this.isPostCreator,
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
    List<PostImage>? images,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? isPostCreator,
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
        images: images ?? this.images,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        isPostCreator: isPostCreator ?? this.isPostCreator,
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
    images: List<PostImage>.from(json["images"].map((x) => PostImage.fromJson(x))),
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    isPostCreator: json["isPostCreator"],
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
    "images": List<dynamic>.from(images.map((x) => x.toJson())),
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "isPostCreator": isPostCreator,
  };
}

class PostImage {
  int id;
  String imageName;
  DateTime createdAt;

  PostImage({
    required this.id,
    required this.imageName,
    required this.createdAt,
  });

  PostImage copyWith({
    int? id,
    String? imageName,
    DateTime? createdAt,
  }) =>
      PostImage(
        id: id ?? this.id,
        imageName: imageName ?? this.imageName,
        createdAt: createdAt ?? this.createdAt,
      );

  factory PostImage.fromJson(Map<String, dynamic> json) => PostImage(
    id: json["id"],
    imageName: json["imageName"],
    createdAt: DateTime.parse(json["createdAt"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "imageName": imageName,
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
