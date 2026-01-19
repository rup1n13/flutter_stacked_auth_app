import 'package:json_annotation/json_annotation.dart';

part 'auth.g.dart';

@JsonSerializable()
class RegistrationData {
  String phone = "";
  String region = "";
  String firstName = "";
  String lastName = "";
  String password = "";

  RegistrationData({
    required this.phone,
    required this.region,
    required this.firstName,
    required this.lastName,
    required this.password,
  });

  factory RegistrationData.fromJson(Map<String, dynamic> json) =>
      _$RegistrationDataFromJson(json);
  Map<String, dynamic> toJson() => _$RegistrationDataToJson(this);
}

@JsonSerializable()
class User {
  Map<String, dynamic> phone;
  ///"phone": {
  ///   "value": "+15148345508",
  ///   "status": "VALID"
  ///   },
  Map<String, dynamic> email;
  ///"email": {
  ///"status": "NONE"
  ///},
  String firstName = "";
  String lastName = "";
  String region = "";
  String identityStatus = "";

  User({
    required this.email,
    required this.phone,
    required this.region,
    required this.firstName,
    required this.lastName,
    required this.identityStatus,
  });

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class AuthResponse {

  String accessToken = "";
  String refreshToken = "";

  AuthResponse({
    required this.accessToken,
    required this.refreshToken,
  });

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AuthResponseToJson(this);
}