import 'dart:async';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';
import '../../../../app/app.router.dart';

class RegisterOtpViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  List<TextEditingController> otpControllers = List.generate(4, (_) => TextEditingController());
  
  int countdown = 46;
  bool canResend = false;
  Timer? _timer;

  void startCountdown() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (countdown > 0) {
        countdown--;
        rebuildUi();
      } else {
        canResend = true;
        rebuildUi();
        timer.cancel();
      }
    });
  }

  void onResendPressed() {
    if (canResend) {
      countdown = 46;
      canResend = false;
      startCountdown();
    }
  }

  void onOtpComplete() {
    _navigationService.navigateToRegisterTermsView();
  }

  @override
  void dispose() {
    _timer?.cancel();
    for (var controller in otpControllers) {
      controller.dispose();
    }
    super.dispose();
  }
}
