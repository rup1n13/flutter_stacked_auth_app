import 'dart:io' show Platform;

import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';

import '../../../commons/app_consts.dart';


class LandingPageViewModel extends BaseViewModel {

  LandingPageViewModel()  {
    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle(
        statusBarColor: const Color(0xFF999999),
        statusBarBrightness: Platform.isAndroid ?
        Public.statusBrightnessAndroid : Public.statusBrightnessIos,
        statusBarIconBrightness:  Platform.isAndroid ?
        Public.statusBrightnessAndroid : Public.statusBrightnessIos
    ));
  }
}
