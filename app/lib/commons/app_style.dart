import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';
import 'app_consts.dart';
import 'app_ui_helpers.dart';

/// App padding
EdgeInsets viewPadding() => EdgeInsets.only(
    left: 18,
    right: 18,
    top: MediaQuery.of(appContext()).padding.top + h(5));

EdgeInsets horizontalPadding() => const EdgeInsets.symmetric(horizontal: 18);

const String primaryFont="CenturyGothic";

/// internalisation
//AppLocalizations i18n = AppLocalizations.of(appContext())!;

SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
statusBarColor: Public.statusBarColor,
statusBarBrightness: Platform.isAndroid
? Public.statusBrightnessAndroid
    : Public.statusBrightnessIos,
statusBarIconBrightness: Platform.isAndroid
? Public.statusBrightnessAndroid
    : Public.statusBrightnessIos);
SystemUiOverlayStyle systemUiOverlayStyleTransparent = SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Platform.isAndroid
        ? Public.statusBrightnessAndroid
        : Public.statusBrightnessIos,
    statusBarIconBrightness: Platform.isAndroid
        ? Public.statusBrightnessAndroid
        : Public.statusBrightnessIos);

List<BoxShadow> boxShadow = [
  BoxShadow(
      color: Colors.grey.withOpacity(0.25),
      spreadRadius: 1,
      blurRadius: 2)
];

class ThemeDataStyle {

  static ThemeData light = ThemeData(
    fontFamily: primaryFont,
  //primarySwatch: Colors.grey,
    useMaterial3: false,
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(elevation: 0),
    colorScheme: ColorScheme.light(
      surface: backgroundColor,
      inverseSurface: primaryColorOpt50,
      onTertiary: Colors.black,
      primary: primaryColorOpt50,
      onPrimaryContainer: backgroundColor, // KeyBoard
    ),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: NoTransitionsBuilder(),
        TargetPlatform.iOS: NoTransitionsBuilder(),
      },
    ),
  );

  static ThemeData dark = ThemeData(
    fontFamily: primaryFont,
    //primarySwatch: Colors.grey,
    useMaterial3: false,
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(elevation: 0),
    colorScheme: ColorScheme.dark(
      surface: primaryColorOpt50,//const Color(0xFF19254D),
      inverseSurface: backgroundColor, // TextView
      primary: primaryColorOpt50,
      onPrimaryContainer: backgroundColor,
    ),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: NoTransitionsBuilder(),
        TargetPlatform.iOS: NoTransitionsBuilder(),
      },
    ),
  );

}


// Custom builder sans transition
class NoTransitionsBuilder extends PageTransitionsBuilder {
  const NoTransitionsBuilder();

  @override
  Widget buildTransitions<T>(
      PageRoute<T> route,
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child,
      ) {
    // Retourner directement le child sans animation
    return child;
  }
}