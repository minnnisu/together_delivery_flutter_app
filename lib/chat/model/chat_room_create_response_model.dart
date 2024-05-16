import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'chat_room_create_response_model.freezed.dart';
part 'chat_room_create_response_model.g.dart';

ChatRoomCreateResponseModel chatRoomCreateResponseModelFromJson(String str) => ChatRoomCreateResponseModel.fromJson(json.decode(str));

String chatRoomCreateResponseModelToJson(ChatRoomCreateResponseModel data) => json.encode(data.toJson());

@freezed
class ChatRoomCreateResponseModel with _$ChatRoomCreateResponseModel {
  const factory ChatRoomCreateResponseModel({
    required int chatRoomId,
    required int postId,
    required String creator,
    required String createdAt,
  }) = _ChatRoomCreateResponseModel;

  factory ChatRoomCreateResponseModel.fromJson(Map<String, dynamic> json) => _$ChatRoomCreateResponseModelFromJson(json);
}
