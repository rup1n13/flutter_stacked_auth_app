import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:nabi/domain/local/local_storage.dart';
import 'package:nabi/domain/models/auth/auth.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../app/app.locator.dart';
import '../domain/local/app_service.dart';
import '../domain/repos/auth_repository.dart';
import 'app_ui_helpers.dart';

class AppNavigation extends ReactiveViewModel {

  static Future<bool> _hadSession() async {
    /// Get session from app local storage
    var session = await LocalStorage.getData(DBKey.userSession);

    /// Save session on app Service
   if(session.isNotEmpty) {
     locator<AppService>()
        .updateUserSession(AuthResponse
        .fromJson(const JsonDecoder().convert(session)));
   }

    return session.isNotEmpty;
  }
  static Future<bool> _hadUserInfo() async {
    /// Get session from app local storage
    var userInfo = await LocalStorage.getData(DBKey.userInfo);

    /// Save session on app Service
   if(userInfo.isNotEmpty) {
     locator<AppService>()
        .setUser(User.fromJson(const JsonDecoder().convert(userInfo)));
   }

   return userInfo.isNotEmpty;
  }

  static provideNextStep() async {
    bool mHadSession = await _hadSession();
    if (mHadSession) {
      _hadUserInfo();
    } else {
      /// No session (such as first run) go to LandingPageView
    //  navigationService().clearStackAndShowView( const LandingPageView() );
      //navigationService().replaceWithLoginView();
    }
  }

  @override
  List<ListenableServiceMixin> get listenableServices => [locator<AppService>()];

}
