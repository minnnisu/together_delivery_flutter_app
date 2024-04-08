import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'usernameDuplicationCheck.freezed.dart';
part 'usernameDuplicationCheck.g.dart';

@freezed
class UsernameDuplicationCheck with _$UsernameDuplicationCheck{
  const factory UsernameDuplicationCheck({
    required String username,
  }) = _UsernameDuplicationCheck;

  factory UsernameDuplicationCheck.fromJson(Map<String, Object?> json) => _$UsernameDuplicationCheckFromJson(json);
}