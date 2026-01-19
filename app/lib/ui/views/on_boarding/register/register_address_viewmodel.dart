import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';
import '../../../../app/app.router.dart';

class RegisterAddressViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  final TextEditingController countryController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController districtController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  void onContinuePressed() {
    if (countryController.text.isNotEmpty &&
        cityController.text.isNotEmpty &&
        districtController.text.isNotEmpty) {
      _navigationService.navigateToRegisterTermsView();
    }
  }

  @override
  void dispose() {
    countryController.dispose();
    cityController.dispose();
    districtController.dispose();
    addressController.dispose();
    super.dispose();
  }
}
