import '../model/chat_message_list_response_model.dart';

abstract class ChatMessageRepository {
  Future<ChatMessageListResponseModel> fetchChatMessage(int chatRoomId, int? cursor);
}