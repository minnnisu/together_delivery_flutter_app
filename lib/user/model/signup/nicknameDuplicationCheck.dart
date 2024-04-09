import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'nicknameDuplicationCheck.freezed.dart';
part 'nicknameDuplicationCheck.g.dart';

@freezed
class NicknameDuplicationCheck with _$NicknameDuplicationCheck{
  const factory NicknameDuplicationCheck({
    required String nickname,
  }) = _NicknameDuplicationCheck;

  factory NicknameDuplicationCheck.fromJson(Map<String, Object?> json) => _$NicknameDuplicationCheckFromJson(json);
}