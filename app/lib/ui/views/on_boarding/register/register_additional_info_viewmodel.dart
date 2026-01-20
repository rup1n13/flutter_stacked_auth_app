import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';
import '../../../../app/app.router.dart';

class RegisterAdditionalInfoViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  final professionController = TextEditingController();
  final employerController = TextEditingController();
  final nationalIdController = TextEditingController();
  final birthPlaceController = TextEditingController();
  final nationalityController = TextEditingController();

  void onContinuePressed() {
    _navigationService.navigateToRegisterAddressView();
  }
}
