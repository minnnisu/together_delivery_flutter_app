// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room_create_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatRoomCreateResponseModelImpl _$$ChatRoomCreateResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatRoomCreateResponseModelImpl(
      chatRoomId: json['chatRoomId'] as int,
      postId: json['postId'] as int,
      creator: json['creator'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$ChatRoomCreateResponseModelImplToJson(
        _$ChatRoomCreateResponseModelImpl instance) =>
    <String, dynamic>{
      'chatRoomId': instance.chatRoomId,
      'postId': instance.postId,
      'creator': instance.creator,
      'createdAt': instance.createdAt,
    };
