import '../../common/exception/error_code.dart';

class LoginResult {
  final bool isSuccess;
  ErrorCode? errorCode;
  String? message;

  LoginResult.success() : isSuccess = true;

  LoginResult.failure(this.errorCode, this.message) : isSuccess = false;
}
