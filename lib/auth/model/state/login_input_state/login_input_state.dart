import 'dart:convert';

LoginInputState loginInputStateFromJson(String str) =>
    LoginInputState.fromJson(json.decode(str));

String loginInputStateToJson(LoginInputState data) =>
    json.encode(data.toJson());

class LoginInputState {
  InputState username;
  InputState password;
  String errorMessage;

  LoginInputState({
    required this.username,
    required this.password,
    required this.errorMessage,
  });

  LoginInputState copyWith({
    InputState? username,
    InputState? password,
    String? errorMessage,
  }) =>
      LoginInputState(
        username: username ?? this.username,
        password: password ?? this.password,
        errorMessage: errorMessage ?? this.errorMessage,
      );

  factory LoginInputState.fromJson(Map<String, dynamic> json) =>
      LoginInputState(
        username: InputState.fromJson(json["username"]),
        password: InputState.fromJson(json["password"]),
        errorMessage: json["errorMessage"],
      );

  Map<String, dynamic> toJson() => {
        "username": username.toJson(),
        "password": password.toJson(),
        "errorMessage": errorMessage,
      };

  LoginInputState.init()
      : username = InputState.init(),
        password = InputState.init(),
        errorMessage = "";
}

class InputState {
  String value;
  bool isValid;

  InputState({
    required this.value,
    required this.isValid,
  });

  InputState copyWith({
    String? value,
    bool? isValid,
  }) =>
      InputState(
        value: value ?? this.value,
        isValid: isValid ?? this.isValid,
      );

  factory InputState.fromJson(Map<String, dynamic> json) => InputState(
        value: json["value"],
        isValid: json["isValid"],
      );

  Map<String, dynamic> toJson() => {
        "value": value,
        "isValid": isValid,
      };

  InputState.init()
      : value = "",
        isValid = false;
}
