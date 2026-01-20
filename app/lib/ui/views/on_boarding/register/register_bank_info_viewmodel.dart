import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';
import '../../../../app/app.router.dart';

class RegisterBankInfoViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  final bankNameController = TextEditingController();
  final accountNumberController = TextEditingController();
  final accountHolderController = TextEditingController();
  final ibanController = TextEditingController();

  void onContinuePressed() {
    _navigationService.navigateToRegisterStatusConfirmationView();
  }
}
