import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';
import '../../../../app/app.router.dart';

class RegisterNpiEntryViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  final npiController = TextEditingController();

  void onVerifyPressed() {
    _navigationService.navigateToRegisterNpiLoadingView();
  }
}
