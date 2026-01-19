// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegistrationData _$RegistrationDataFromJson(Map<String, dynamic> json) =>
    RegistrationData(
      phone: json['phone'] as String,
      region: json['region'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$RegistrationDataToJson(RegistrationData instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'region': instance.region,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'password': instance.password,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      email: json['email'] as Map<String, dynamic>,
      phone: json['phone'] as Map<String, dynamic>,
      region: json['region'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      identityStatus: json['identityStatus'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'phone': instance.phone,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'region': instance.region,
      'identityStatus': instance.identityStatus,
    };

AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) => AuthResponse(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$AuthResponseToJson(AuthResponse instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
