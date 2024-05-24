// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_detail_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostDetailResponseModelImpl _$$PostDetailResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostDetailResponseModelImpl(
      post: Post.fromJson(json['post'] as Map<String, dynamic>),
      chatRoom: ChatRoom.fromJson(json['chatRoom'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PostDetailResponseModelImplToJson(
        _$PostDetailResponseModelImpl instance) =>
    <String, dynamic>{
      'post': instance.post,
      'chatRoom': instance.chatRoom,
    };

_$ChatRoomImpl _$$ChatRoomImplFromJson(Map<String, dynamic> json) =>
    _$ChatRoomImpl(
      id: json['id'] as int,
      createdAt: json['createdAt'] as String,
      deletedAt: json['deletedAt'],
      isChatRoomMember: json['isChatRoomMember'] as bool,
    );

Map<String, dynamic> _$$ChatRoomImplToJson(_$ChatRoomImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'deletedAt': instance.deletedAt,
      'isChatRoomMember': instance.isChatRoomMember,
    };

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      id: json['id'] as int,
      nickname: json['nickname'] as String,
      content: json['content'] as String?,
      restaurantName: json['restaurantName'] as String,
      categoryCode: json['categoryCode'] as String,
      deliveryFee: json['deliveryFee'] as int,
      minOrderFee: json['minOrderFee'] as int,
      meetLocation:
          MeetLocation.fromJson(json['meetLocation'] as Map<String, dynamic>),
      status: json['status'] as bool,
      images: (json['images'] as List<dynamic>)
          .map((e) => PostImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      isPostCreator: json['isPostCreator'] as bool,
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'content': instance.content,
      'restaurantName': instance.restaurantName,
      'categoryCode': instance.categoryCode,
      'deliveryFee': instance.deliveryFee,
      'minOrderFee': instance.minOrderFee,
      'meetLocation': instance.meetLocation,
      'status': instance.status,
      'images': instance.images,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'isPostCreator': instance.isPostCreator,
    };

_$MeetLocationImpl _$$MeetLocationImplFromJson(Map<String, dynamic> json) =>
    _$MeetLocationImpl(
      address: json['address'] as String,
      shortAddress: json['shortAddress'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$MeetLocationImplToJson(_$MeetLocationImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'shortAddress': instance.shortAddress,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$PostImageImpl _$$PostImageImplFromJson(Map<String, dynamic> json) =>
    _$PostImageImpl(
      id: json['id'] as int,
      imageName: json['imageName'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$PostImageImplToJson(_$PostImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageName': instance.imageName,
      'createdAt': instance.createdAt.toIso8601String(),
    };
