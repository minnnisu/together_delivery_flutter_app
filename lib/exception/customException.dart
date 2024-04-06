import '../constant/errorCode.dart';

class CustomException{
  final bool isSuccess;
  final ErrorCode errorCode;

  CustomException(ErrorCode duplicatedUserNameError, {
    this.isSuccess = true,
    this.errorCode = ErrorCode.OK,
  });
}