import 'package:flutter/cupertino.dart';

import '../../app/app.locator.dart';
import '../local/app_service.dart';
import '../local/local_storage.dart';
import '../models/auth/auth.dart';
import '../models/ip_info/ip_info.dart';
import '../remote/apis.dart';

/// Repository for handling authentication related operations.
class AuthRepository {

  /// Fetches IP information.
  ///
  /// [onAvailable] Callback function to be called when IP information is successfully fetched.
  /// It takes an [IpInfo] object as a parameter.
  /// [onError] Callback function to be called when an error occurs during fetching IP information.
  /// It takes an error message string as a parameter.
  static Future<void> getIpInfo(Function(IpInfo ipInfo) onAvailable,
      Function(String error) onError) async {
    try {
      client.getIpInfo().then((it) async {
        onAvailable(it);
      })
          .catchError((Object obj) {
        onError(obj.toString());
      });
    } catch (e) {
      onError(e.toString());
    }
  }
  
  /// Initializes the registration process.
  ///
  /// [data] The registration data.
  /// [onResult] Callback function to be called with the result of the registration initialization.
  /// It takes a boolean value as a parameter (true for success, false for failure).
  static Future<void> initRegistration(
      RegistrationData data,
      Function(bool) onResult) async {
      client.initRegistration(data).then((it) async {
        onResult(true);
      }).catchError((Object obj) {
        onResult(false);
        debugPrint(obj.toString());
      });
  }

}
