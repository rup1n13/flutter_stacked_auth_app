// This is AA Text field
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../../commons/app_colors.dart';
import '../../../commons/app_ui_helpers.dart';

// ignore: must_be_immutable
class KOtp extends StatelessWidget {

  final Function(String) onSubmit;
  final int digits;
  const KOtp({ super.key, required this.onSubmit, this.digits = 6});

  @override
  Widget build(BuildContext context) {
    return  OtpTextField(
      textStyle: TextStyle(
          fontSize: s(20),
          color: black,
          fontWeight: FontWeight.w600),
      numberOfFields: digits,
      alignment: Alignment.center,
      cursorColor: Colors.transparent,
      borderColor: colorFocus,
      contentPadding: EdgeInsets.all(w(4)),
      focusedBorderColor: primaryColorOpt50,
      //set to true t o show as box or false to show as dash
      showFieldAsBox: true,
      margin:  EdgeInsets.all(w(4)),
      borderWidth: 2,
      autoFocus: false,
      borderRadius: BorderRadius.circular(4.0),
      fieldWidth: w(42),
      fieldHeight:  w(52),
      //runs when a code is typed in
      onCodeChanged: (String code) {
        //handle validation or checks here
      },
      //runs when every textfield is filled
      onSubmit: onSubmit // end onSubmit
    );
  }
}
