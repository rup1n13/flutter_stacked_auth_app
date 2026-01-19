import 'dart:convert';

import 'package:stacked/stacked.dart';

import '../models/auth/auth.dart';
import '../models/kooli/kooli.dart';
import '../repos/auth_repository.dart';
import 'local_storage.dart';

class AppService with ListenableServiceMixin {
  //1
  AppService() {
    //3
    listenToReactiveValues([_userSession,_registrationData,_user]);
  }

  //2
  final ReactiveValue<RegistrationData?> _registrationData = ReactiveValue<RegistrationData?>(null);
  RegistrationData? get registrationData => _registrationData.value;
  void updateRegistrationData(value) {
    _registrationData.value = value;
    notifyListeners();
  }

  //2
  final ReactiveValue<ShipmentNearbyResponse?> _shipmentNearby = ReactiveValue<ShipmentNearbyResponse?>(null);
  ShipmentNearbyResponse? get shipmentNearby => _shipmentNearby.value;
  void updateShipmentNearby(value) {
    _shipmentNearby.value = value;
    notifyListeners();
  }

  final ReactiveValue<AuthResponse?> _userSession = ReactiveValue<AuthResponse?>(null);
  AuthResponse? get userSession => _userSession.value;
  void updateUserSession(value) {
    _userSession.value = value;
    notifyListeners();
  }

  final ReactiveValue<User?> _user = ReactiveValue<User?>(null);
  User? get user => _user.value;
  Future<void> setUser(value) async {
    _user.value = value;
    notifyListeners();
  }
  Future<void> updateUser() async {
    /**await AuthRepository.userInfo((userInfo){
      if(userInfo!= null){
        /// Save session on localStorage
        LocalStorage.saveData(DBKey.userInfo,
            const JsonEncoder().convert(userInfo.toJson()));
        /// Save session on app Service
        _user.value = userInfo;
        notifyListeners();
      }
    });*/
  }

}
