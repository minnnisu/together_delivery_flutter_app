// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loginForm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginFormImpl _$$LoginFormImplFromJson(Map<String, dynamic> json) =>
    _$LoginFormImpl(
      username: json['username'] as String,
      password: json['password'] as String,
      errorMsg: json['errorMsg'] as String,
    );

Map<String, dynamic> _$$LoginFormImplToJson(_$LoginFormImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'errorMsg': instance.errorMsg,
    };
