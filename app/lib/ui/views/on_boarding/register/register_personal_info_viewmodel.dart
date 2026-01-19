import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';
import '../../../../app/app.router.dart';

class RegisterPersonalInfoViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController dateOfBirthController = TextEditingController();

  String gender = '';

  void selectGender(String value) {
    gender = value;
    notifyListeners();
  }

  Future<void> selectDateOfBirth(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(2000),
      firstDate: DateTime(1940),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      dateOfBirthController.text = DateFormat('dd/MM/yyyy').format(picked);
    }
  }

  void onContinuePressed() {
    if (lastNameController.text.isNotEmpty &&
        firstNameController.text.isNotEmpty &&
        dateOfBirthController.text.isNotEmpty &&
        gender.isNotEmpty) {
      _navigationService.navigateToRegisterAddressView();
    }
  }

  @override
  void dispose() {
    lastNameController.dispose();
    firstNameController.dispose();
    emailController.dispose();
    dateOfBirthController.dispose();
    super.dispose();
  }
}
