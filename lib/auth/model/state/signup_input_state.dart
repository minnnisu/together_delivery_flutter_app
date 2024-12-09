// To parse this JSON data, do
//
//     final signupInputState = signupInputStateFromJson(jsonString);

import 'dart:convert';

SignupInputState signupInputStateFromJson(String str) => SignupInputState.fromJson(json.decode(str));

String signupInputStateToJson(SignupInputState data) => json.encode(data.toJson());

class SignupInputState {
  InputState userId;
  InputState password;
  InputState passwordCheck;
  InputState name;
  InputState nickname;
  InputState email;
  InputState college;

  SignupInputState({
    required this.userId,
    required this.password,
    required this.passwordCheck,
    required this.name,
    required this.nickname,
    required this.email,
    required this.college,
  });

  SignupInputState copyWith({
    InputState? userId,
    InputState? password,
    InputState? passwordCheck,
    InputState? name,
    InputState? nickname,
    InputState? email,
    InputState? college,
    InputState? firstPhoneNumber,
    InputState? secondPhoneNumber,
    InputState? thirdPhoneNumber,
  }) =>
      SignupInputState(
        userId: userId ?? this.userId,
        password: password ?? this.password,
        passwordCheck: passwordCheck ?? this.passwordCheck,
        name: name ?? this.name,
        nickname: nickname ?? this.nickname,
        email: email ?? this.email,
        college: college ?? this.college,
      );

  factory SignupInputState.fromJson(Map<String, dynamic> json) => SignupInputState(
    userId: InputState.fromJson(json["userId"]),
    password: InputState.fromJson(json["password"]),
    passwordCheck: InputState.fromJson(json["passwordCheck"]),
    name: InputState.fromJson(json["name"]),
    nickname: InputState.fromJson(json["nickname"]),
    email: InputState.fromJson(json["email"]),
    college: InputState.fromJson(json["college"]),
  );

  Map<String, dynamic> toJson() => {
    "userId": userId.toJson(),
    "password": password.toJson(),
    "passwordCheck": passwordCheck.toJson(),
    "name": name.toJson(),
    "nickname": nickname.toJson(),
    "email": email.toJson(),
    "college": college.toJson(),
  };

  SignupInputState.init() :
        userId = InputState.init(),
        password = InputState.init(),
        passwordCheck = InputState.init(),
        nickname = InputState.init(),
        name = InputState.init(),
        email = InputState.init(),
        college = InputState.init();
}

class InputState {
  String value;
  bool isValid;
  String stateMessage;

  InputState({
    required this.value,
    required this.isValid,
    required this.stateMessage,
  });

  InputState copyWith({
    String? value,
    bool? isValid,
    String? stateMessage,
  }) =>
      InputState(
        value: value ?? this.value,
        isValid: isValid ?? this.isValid,
        stateMessage: stateMessage ?? this.stateMessage,
      );

  factory InputState.fromJson(Map<String, dynamic> json) => InputState(
    value: json["value"],
    isValid: json["isValid"],
    stateMessage: json["stateMessage"],
  );

  Map<String, dynamic> toJson() => {
    "value": value,
    "isValid": isValid,
    "stateMessage": stateMessage,
  };

  InputState.init(): value = "", isValid = false, stateMessage = "";
}
