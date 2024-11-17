import 'dart:convert';

import 'package:flutter/cupertino.dart';

@immutable
class NicknameDuplicationCheckRequestModel {
  final String nickname;

  NicknameDuplicationCheckRequestModel({
    required this.nickname,
  });

  NicknameDuplicationCheckRequestModel copyWith({
    String? nickname,
  }) =>
      NicknameDuplicationCheckRequestModel(
        nickname: nickname ?? this.nickname,
      );

  factory NicknameDuplicationCheckRequestModel.fromRawJson(String str) => NicknameDuplicationCheckRequestModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NicknameDuplicationCheckRequestModel.fromJson(Map<String, dynamic> json) => NicknameDuplicationCheckRequestModel(
    nickname: json["nickname"],
  );

  Map<String, dynamic> toJson() => {
    "nickname": nickname,
  };
}
