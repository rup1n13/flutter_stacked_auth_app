
import 'package:email_validator/email_validator.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../commons/app_functions.dart';
import '../../../commons/app_ui_helpers.dart';


String? phoneNumberValidation(PhoneNumber phoneNumber) {
  if (Functions.validatePhone(phoneNumber.phoneNumber!,
      isoCode: phoneNumber.isoCode!)) {
    return null;
  } else {
    return l10n.lndtei;
  }
}

String? passwordValidation(pwd) {
  if (Functions.validatePassword(pwd)) {
    return null; // pas d’erreur
  } else {
    return l10n.lmdpdeamcedcamumumuceucs;
  }
}

String? emailValidation(email) {
  if (EmailValidator.validate(email)) {
    return null; // pas d’erreur
  } else {
    return l10n.vruev;
  }
}

String? defaultValidation(String value) {
  if (value.isNotEmpty) {
    return null; // pas d’erreur
  } else {
    return l10n.ccnppevToast;
  }
}