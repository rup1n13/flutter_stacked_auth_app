import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';
import '../../../../app/app.router.dart';

class RegisterPinViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  final pinController = TextEditingController();
  final confirmPinController = TextEditingController();

  bool showPin = false;
  bool showConfirmPin = false;

  void togglePinVisibility() {
    showPin = !showPin;
    rebuildUi();
  }

  void toggleConfirmPinVisibility() {
    showConfirmPin = !showConfirmPin;
    rebuildUi();
  }

  void onValidatePressed() {
    _navigationService.navigateToRegisterFinalSuccessView();
  }
}
