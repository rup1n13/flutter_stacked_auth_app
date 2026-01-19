
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:nabi/commons/app_functions.dart';
import 'package:stacked/stacked.dart';

import '../../../../../app/app.locator.dart';
import '../../../../commons/app_ui_helpers.dart';
import '../../../../domain/local/app_service.dart';
import '../../../components/widget/app_toast.dart';

class LoginViewModel extends ReactiveViewModel {
  final appState = locator<AppErrorMessage>();
  final appService = locator<AppService>();

  final TextEditingController phoneController = TextEditingController();
  final TextEditingController pwdController = TextEditingController();

  PhoneNumber? _phoneNumber;
  PhoneNumber? get phoneNumber => _phoneNumber;
  setPhoneNumber(PhoneNumber phoneNumber) {
    _phoneNumber = phoneNumber;
    notifyListeners();
  }

  bool get canSubmit =>
      pwdController.text.isNotEmpty &&
        phoneController.text.isNotEmpty;
  bool get isValidPassword {
    return  Functions.validatePassword(pwdController.text);
  }
  bool get isValidPhone {
    return  Functions.validatePhone(
        phoneNumber!.phoneNumber!,isoCode: phoneNumber!.isoCode!);
  }

  Future onLoginBtnClick() async {
    if (!canSubmit) {
      AppErrorMessage.show(l10n.vrtlcToast,);
      return;
    }
    if (!isValidPhone /*|| !isValidPassword*/) {
      return ;
    }

    _connect(phoneNumber?.phoneNumber
        .toString().replaceAll(" ", ""), pwdController.text);
  }

  void _connect(phone,pwd) async {

  }

  @override
  List<ListenableServiceMixin> get listenableServices => [appService];
}
