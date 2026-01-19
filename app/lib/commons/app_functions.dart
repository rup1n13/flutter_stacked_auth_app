
import 'dart:typed_data';
import 'package:dlibphonenumber/generated/classes/phone_number/phonenumber.pb.dart';
import 'package:dlibphonenumber/phone_number_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'dart:ui' as ui;
import 'app_ui_helpers.dart';

class Functions {

  /// Returns true , false
  /// true if password is correct and false for incorrect.
  static bool validatePassword(String password) {
    // regex for password that contains upper,lower,digit and Special character
    const pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    final regex = RegExp(pattern);

    return regex.hasMatch(password) && password.length >= 12;
  }

  static bool validatePhone(String number, {String isoCode = 'FR'}) {
    try {
      final PhoneNumberUtil phoneUtil = PhoneNumberUtil.instance;
      final PhoneNumber phoneNumber = phoneUtil.parse(number, isoCode);
      final bool validPhoneNumber = phoneUtil.isValidNumber(phoneNumber);
      debugPrint('$validPhoneNumber');
      return validPhoneNumber;
    } catch (e) {
      debugPrint("Numéro invalide: $e");
      return false;
    }
  }

  static String phoneDash(String value, String dash) {
    value = value.replaceAll('-', '');
    var newString = '';
    for (int i = 0; i < value.length; i++) {
      newString += value[i];
      if (i == 2) {
        newString += dash;
      }
      if (i == 4) {
        newString += dash;
      }
      if (i == 6) {
        newString += dash;
      }
      if (i == 8) {
        newString += dash;
      }
    }
    return newString;
  }
  /// ui notification
  static void showInSnackBar(value, color) {
    ScaffoldMessenger.of(appContext()).showSnackBar(SnackBar(
        content: Text(
          value,
          style: TextStyle(
            //fontSize: s(40),
              color: color),
        )));
  }

  static String assertNull(String? str, String dft) {
    return (str == "" || str == " " || str == null || str == "null")
        ? dft
        : str;
  }

  /// open external url
  @Deprecated("Use launch instead")
  static Future launchURL(url) async {
    // if (!await launch(url)) throw 'Could not launch $url';
    if (!await launchUrlString(url)) throw 'Could not launch $url';
  }

  static Future launch(url) async {
    if (!await launchUrl(Uri.parse(url))) throw 'Could not launch $url';
  }

  static String getDateFromTimestamp(timestamp) {
    var date = DateTime.fromMillisecondsSinceEpoch(int.parse(timestamp));
    return DateFormat("dd/MM/yyyy").format(date);
  }

  static Future showDialog(Widget view,
      {bool isDismissible = true}) async {
    await showGeneralDialog(
      barrierLabel: "Label",
      barrierDismissible: true,
      barrierColor: Colors.black.withAlpha(77),//withOpacity(0.3),
      context: appContext(),
      pageBuilder: (context, anim1, anim2) {
        return view;
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return SlideTransition(
          position: Tween(begin: const Offset(0, 0), end: const Offset(0, 0))
              .animate(anim2),
          child: child,
        );
      },
    );
  }

  /// Bottom sheet dialog builder
  static void bottomSheetDialog(Widget view, {bool? isDismissible = false})
  async {
    showModalBottomSheet(
        isDismissible: isDismissible!,
        isScrollControlled: true,
        context: appContext(),
        backgroundColor: Colors.transparent,
        builder: (cxt) => view );
  }


  static Future<Uint8List> widgetToImageOffscreen(
      Widget widget, {
        double pixelRatio = 3.0,
      })
  async {
    final repaintKey = GlobalKey();

    final overlay = StackedService.navigatorKey!.currentState!.overlay!;
    late OverlayEntry entry;

    entry = OverlayEntry(
      builder: (_) => Positioned(
        left: -9999,
        top: -9999,
        child: Material(
          color: Colors.transparent,
          child: RepaintBoundary(
            key: repaintKey,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: widget,
            ),
          ),
        ),
      ),
    );

    overlay.insert(entry);

    // Wait for layout & paint
    await Future.delayed(const Duration(milliseconds: 100));
    await WidgetsBinding.instance.endOfFrame;

    final boundary =
    repaintKey.currentContext!.findRenderObject()
    as RenderRepaintBoundary;

    final image = await boundary.toImage(pixelRatio: pixelRatio);
    final byteData =
    await image.toByteData(format: ui.ImageByteFormat.png);

    entry.remove();

    return byteData!.buffer.asUint8List();
  }
}
