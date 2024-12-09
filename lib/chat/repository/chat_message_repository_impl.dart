import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/chat/model/chat_message_list_response_model.dart';
import 'package:together_delivery_app/chat/repository/chat_message_repository.dart';
import 'package:together_delivery_app/common/config/api_url.dart';
import 'package:together_delivery_app/common/service/api_service.dart';

import '../../common/service/authentication_network_api_service.dart';

final chatMessageRepositoryProvider = Provider<ChatMessageRepository>(
  (ref) {
    final apiService = ref.watch(authenticationNetworkApiServiceProvider);
    return ChatMessageRepositoryImpl(apiService);
  },
);

class ChatMessageRepositoryImpl extends ChatMessageRepository {
  final ApiService apiService;

  ChatMessageRepositoryImpl(this.apiService);

  @override
  Future<ChatMessageListResponseModel> fetchChatMessage(
      int chatRoomId, int? cursor) async {
    var queryParameters = {"chatRoomId": chatRoomId.toString()};
    if (cursor != null) {
      queryParameters.addAll({"cursor": cursor.toString()});
    }

    var response = await apiService.getGetApiResponse(ApiUrl.chatMessageListGet,
        queryParameters: queryParameters);

    return ChatMessageListResponseModel.fromJson(response.data);
  }
}
