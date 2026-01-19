import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked_services/stacked_services.dart';

import '../app/app.locator.dart';
import '../l10n/app_localizations.dart';
import '../ui/components/widget/app_toast.dart';
import '../ui/views/startup/startup_view.dart';

const double tinySize = 5.0;
const double smallSize = 10.0;
const double mediumSize = 25.0;
const double largeSize = 50.0;
const double massiveSize = 120.0;

AppLocalizations l10n = AppLocalizations.of(appContext())!;

/// Get device screen dimensions
double screenWidth() => MediaQuery.of(appContext()).size.width;

double screenHeight() => MediaQuery.of(appContext()).size.height;

/// Get device screen dimensions fraction
double screenHeightFraction(
        {int dividedBy = 1, double offsetBy = 0, double max = 3000}) =>
    min((screenHeight() - offsetBy) / dividedBy, max);

double screenWidthFraction(
        {int dividedBy = 1, double offsetBy = 0, double max = 3000}) =>
    min((screenWidth() - offsetBy) / dividedBy, max);

/// Add vertical space between two widget
Widget vSpace(double height) => SizedBox(height: h(height));

/// Add vertical space between two widget
Widget hSpace(double width) => SizedBox(width: w(width));

/// Get responsive font size
double s(double fontSize, {double? max}) {
  max ??= fontSize;

  var responsiveSize =
      min(fontSize * (781 / ((screenWidth() + screenHeight()) / 1.5)), max);

  return responsiveSize;
}

/// Get responsive dimensions
double w(double width, {double? max}) {
  max ??= width;

  var responsiveSize = min(width * (375 / screenWidth()), max);
  if (responsiveSize < width) responsiveSize = width;
  return responsiveSize;
}

double h(double height, {double? max}) {
  max ??= height;

  var responsiveSize = min(height * (781 / screenHeight()), max);
  if (responsiveSize < height) responsiveSize = height;
  return responsiveSize;
}

/// Get responsive border size
double b(double height, {double? max}) {
  max ??= 100;

  var responsiveSize = min(height * (781 / screenHeight()), max);

  return responsiveSize;
}

/// Add divider line on Ui
Widget spacedDivider() => Column(
      children: <Widget>[
        vSpace(20),
        SvgPicture.asset(
          'assets/svg/ic_appbar_shadow.svg',
          width: screenWidth(),
          height: h(18),
          fit: BoxFit.cover,
        ),
        vSpace(20),
      ],
    );


NavigationService navigationService (){
  locator<AppErrorMessage>().updateErrorMessage("");
  return locator<NavigationService>();
}

void reboot() => navigationService().clearStackAndShowView(const StartupView());

BuildContext appContext() {
  return StackedService.navigatorKey!.currentState!.overlay!.context;
}

/**
    double halfScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 2);

    double thirdScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 3);

    double quarterScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 4);
 */
