import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'chat_room_create_request_model.freezed.dart';
part 'chat_room_create_request_model.g.dart';

ChatRoomCreateRequestModel chatRoomCreateRequestModelFromJson(String str) => ChatRoomCreateRequestModel.fromJson(json.decode(str));

String chatRoomCreateRequestModelToJson(ChatRoomCreateRequestModel data) => json.encode(data.toJson());

@freezed
class ChatRoomCreateRequestModel with _$ChatRoomCreateRequestModel {
  const factory ChatRoomCreateRequestModel({
    required int postId,
  }) = _ChatRoomCreateRequestModel;

  factory ChatRoomCreateRequestModel.fromJson(Map<String, dynamic> json) => _$ChatRoomCreateRequestModelFromJson(json);
}
