import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';
import '../../../../app/app.router.dart';

class RegisterPhoneViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  
  final TextEditingController phoneController = TextEditingController();
  String phoneNumber = '';

  void onContinuePressed() {
    if (phoneNumber.isNotEmpty) {
      _navigationService.navigateToRegisterOtpView();
    }
  }
}
