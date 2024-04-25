import 'package:together_delivery_app/common/const/errorCode.dart';

class CustomException implements Exception{
  final ErrorCode errorCode;
  CustomException({required this.errorCode});
}