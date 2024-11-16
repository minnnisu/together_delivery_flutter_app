import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/chat/model/chat_room_create_request_model.dart';
import 'package:together_delivery_app/chat/model/chat_room_create_response_model.dart';
import 'package:together_delivery_app/common/const/errorCode.dart';
import 'package:together_delivery_app/common/exception/customException.dart';
import 'package:together_delivery_app/common/helper/apiUrls.dart';

import '../../common/provider/dioProvider.dart';

final chatRepositoryProvider = Provider<ChatRepository>((ref) {
  final dio = ref.watch(dioProvider);
  return ChatRepository(dio);
});

class ChatRepository {
  final Dio dio;

  ChatRepository(this.dio);


  Future<ChatRoomCreateResponseModel> createChatRoom(
      ChatRoomCreateRequestModel chatRoomCreateRequestModel) async {
    try{
      final response = await dio.post(
          apiUrls.chatRoomCreate,
          options: Options(headers: {'accessToken': 'true'}),
          data: chatRoomCreateRequestModel.toJson()
      );

      return ChatRoomCreateResponseModel.fromJson(response.data);
    } on DioException catch(e) {
      if (e.response?.data["errorCode"] == 'UserNotFoundError') {
        throw CustomException(errorCode: ErrorCode.UserNotFoundError);
      }

      if (e.response?.data["errorCode"] == 'NoSuchPostError') {
        throw CustomException(errorCode: ErrorCode.NoSuchPostError);
      }

      if (e.response?.data["errorCode"] == 'AlreadyExistChatRoomError') {
        throw CustomException(errorCode: ErrorCode.AlreadyExistChatRoomError);
      }

      throw CustomException(errorCode: ErrorCode.InternalServerError);

    }
  }
}


