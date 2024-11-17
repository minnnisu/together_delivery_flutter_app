import 'package:flutter/cupertino.dart';

import '../config/utils.dart';
import '../exception/error_code.dart';
import '../routes/routes.dart';

class ApiErrorViewResolver {
  late Map<String, Function()> _errorHandlers;
  final BuildContext context;

  ApiErrorViewResolver(this.context) {
    _errorHandlers = {
      ErrorCode.TokenReissueError.name: _displayTokenReissueError,
      ErrorCode.NoTokenError.name: _displayNoTokenError,
      ErrorCode.NetworkConnectionError.name: _displayNetworkConnectionError,
      ErrorCode.RequestCancelError.name: _displayRequestCancelError,
      ErrorCode.ConnectionTimeoutError.name: _displayConnectionTimeoutError,
      ErrorCode.ReceiveTimeoutError.name: _displayReceiveTimeoutError,
      ErrorCode.SendTimeoutError.name: _displaySendTimeoutError,
      ErrorCode.UnknownError.name: _displayUnknownError,
      ErrorCode.UserNotFoundError.name: _displayUserNotFoundError
    };
  }

  void resolve(ErrorCode key) {
    try {
      _errorHandlers[key.name]!.call();
    } catch (e) {
      _displayUnknownError();
    }
  }

  void addHandler(ErrorCode key, Function() handler) {
    _errorHandlers[key.name] = handler;
  }

  void updateHandler(ErrorCode key, Function() handler) {
    _errorHandlers[key.name] = handler;
  }

  void deleteHandler(ErrorCode key) {
    _errorHandlers.remove(key.name);
  }

  void _displayTokenReissueError() {
    Utils.toastMessage("재로그인이 필요합니다.");
    Navigator.pushNamedAndRemoveUntil(
      context,
      RoutesName.login,
      (route) => false,
    );
  }

  void _displayNoTokenError() {
    Utils.toastMessage("재로그인이 필요합니다.");
    Navigator.pushNamedAndRemoveUntil(
      context,
      RoutesName.login,
      (route) => false,
    );
  }

  void _displayUserNotFoundError() {
    Utils.toastMessage("재로그인이 필요합니다.");
    Navigator.pushNamedAndRemoveUntil(
      context,
      RoutesName.login,
      (route) => false,
    );
  }

  void _displayNetworkConnectionError() {
    Utils.toastMessage("네트워크가 불안정합니다.");
  }

  void _displayRequestCancelError() {
    Utils.toastMessage("요청 과정에서 문제가 발생하였습니다.");
  }

  void _displayConnectionTimeoutError() {
    Utils.toastMessage("요청 과정에서 문제가 발생하였습니다.");
  }

  void _displayReceiveTimeoutError() {
    Utils.toastMessage("요청 과정에서 문제가 발생하였습니다.");
  }

  void _displaySendTimeoutError() {
    Utils.toastMessage("요청 과정에서 문제가 발생하였습니다.");
  }

  void _displayUnknownError() {
    Utils.toastMessage("일시적인 문제가 발생하였습니다.");
  }
}
