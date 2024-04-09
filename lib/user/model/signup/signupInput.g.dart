// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signupInput.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignupInputImpl _$$SignupInputImplFromJson(Map<String, dynamic> json) =>
    _$SignupInputImpl(
      username: json['username'] as String,
      password: json['password'] as String,
      passwordCheck: json['passwordCheck'] as String,
      name: json['name'] as String,
      nickname: json['nickname'] as String,
      email: json['email'] as String,
      telephone: json['telephone'] as String,
      college: json['college'] as String,
      usernameCheckSuccessMessage:
          json['usernameCheckSuccessMessage'] as String?,
      nicknameCheckSuccessMessage:
          json['nicknameCheckSuccessMessage'] as String?,
      usernameErrMsg: json['usernameErrMsg'] as String?,
      passwordErrMsg: json['passwordErrMsg'] as String?,
      passwordCheckErrMsg: json['passwordCheckErrMsg'] as String?,
      nameErrMsg: json['nameErrMsg'] as String?,
      nicknameErrMsg: json['nicknameErrMsg'] as String?,
      emailErrMsg: json['emailErrMsg'] as String?,
      telephoneErrMsg: json['telephoneErrMsg'] as String?,
      collegeErrMsg: json['collegeErrMsg'] as String?,
      currentFocusedField: $enumDecodeNullable(
          _$SignupFieldTypeEnumMap, json['currentFocusedField']),
    );

Map<String, dynamic> _$$SignupInputImplToJson(_$SignupInputImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'passwordCheck': instance.passwordCheck,
      'name': instance.name,
      'nickname': instance.nickname,
      'email': instance.email,
      'telephone': instance.telephone,
      'college': instance.college,
      'usernameCheckSuccessMessage': instance.usernameCheckSuccessMessage,
      'nicknameCheckSuccessMessage': instance.nicknameCheckSuccessMessage,
      'usernameErrMsg': instance.usernameErrMsg,
      'passwordErrMsg': instance.passwordErrMsg,
      'passwordCheckErrMsg': instance.passwordCheckErrMsg,
      'nameErrMsg': instance.nameErrMsg,
      'nicknameErrMsg': instance.nicknameErrMsg,
      'emailErrMsg': instance.emailErrMsg,
      'telephoneErrMsg': instance.telephoneErrMsg,
      'collegeErrMsg': instance.collegeErrMsg,
      'currentFocusedField':
          _$SignupFieldTypeEnumMap[instance.currentFocusedField],
    };

const _$SignupFieldTypeEnumMap = {
  SignupFieldType.username: 'username',
  SignupFieldType.password: 'password',
  SignupFieldType.passwordCheck: 'passwordCheck',
  SignupFieldType.name: 'name',
  SignupFieldType.nickname: 'nickname',
  SignupFieldType.email: 'email',
  SignupFieldType.telephone: 'telephone',
  SignupFieldType.college: 'college',
};
