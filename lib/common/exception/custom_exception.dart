import 'error_code.dart';

class CustomException implements Exception{
  ErrorCode errorCode;
  String errorMessage;

  CustomException(this.errorCode) : errorMessage = errorCode.message;

  CustomException.message(this.errorCode, this.errorMessage);
}