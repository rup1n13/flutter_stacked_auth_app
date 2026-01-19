
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:pinput/pinput.dart';
import 'package:stacked/stacked.dart';

import '../../../../commons/app_colors.dart';
import '../../../../commons/app_style.dart';
import '../../../../commons/app_ui_helpers.dart';
import '../../../components/widget/app_button.dart';
import '../../../components/widget/app_icon.dart';
import 'code_verification_viewmodel.dart';

class CodeVerificationView extends StackedView<CodeVerificationViewmodel> {
  final PhoneNumber phone;

  CodeVerificationView({super.key,
    required this.phone,});

  final defaultPinTheme = PinTheme(
    width: 55,
    height: 55,
    textStyle: const TextStyle(
      fontSize: 16,
      color: primaryColor,
      fontWeight: FontWeight.w400,
    ),
    decoration: BoxDecoration(
      color: const Color(0xFFFFFFFF),
      border: Border.all(
        color: primaryColor,
      ),
      borderRadius: BorderRadius.circular(8),
    ),
  );
  final submittedOrFucusedPinTheme = PinTheme(
    width: 55,
    height: 55,
    textStyle: const TextStyle(
      fontSize: 16,
      color: primaryColor,
      fontWeight: FontWeight.w400,
    ),
    decoration: BoxDecoration(
      color: const Color(0xFFFFFFFF),
      border: Border.all(
        color: primaryColor,
        width: 1.5
      ),
      borderRadius: BorderRadius.circular(8),
    ),
  );

  @override
  Widget builder(
    BuildContext context,
    CodeVerificationViewmodel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: viewPadding(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              vSpace(70),
              const Center(child: AppIcon()),
              vSpace(60),
              Text( l10n.elcea(phone.phoneNumber.toString()
                  .replaceRange(4, 10, "********")),
                // "Entrez le code envoyé au ${phone.phoneNumber.toString().replaceRange(4, 10, "********")}",
                style:  const TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
                textAlign: TextAlign.start,
              ),
              vSpace(28),
              Pinput(
                length: 6,
                controller: viewModel.otpController,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: submittedOrFucusedPinTheme,
                submittedPinTheme: submittedOrFucusedPinTheme,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
                onCompleted: (pin) {},
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              ),
              /*Padding(
                padding: const EdgeInsets.only(left: 6.0),
                child: OtpTextField(
                  clearText: true,
                  numberOfFields: 6,
                  fieldWidth: 53,
                  alignment: Alignment.center,
                  fieldHeight: 60,
                  contentPadding:  const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                  borderWidth: 1.5,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderColor: primaryColor,
                  focusedBorderColor: primaryColor,
                  disabledBorderColor: primaryColor,
                  enabledBorderColor: primaryColor,
                  cursorColor: primaryColor,
                  textStyle: const TextStyle(
                    fontSize: 16,
                    color: primaryColor,
                    fontWeight: FontWeight.w400,
                  ),
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    viewModel.otpController.text = code;
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode){
                  }, // end onSubmit
                ),
              ),*/
              vSpace(36),
              Center(
                child: SizedBox(
                  height: 55,
                  child: viewModel.onLoad ?
                  const Column(
                    children: [
                      SizedBox(width: 12, height: 12,
                        child: CircularProgressIndicator(
                          color: primaryColor,
                          strokeWidth: 2,
                        ),),
                    ],
                  )
                      : CountdownTimer(
                    endTime: DateTime.now().millisecondsSinceEpoch +
                        (1000 * 90),
                    onEnd:(){
                      viewModel.setEnded(true);
                    },
                    widgetBuilder: (_, CurrentRemainingTime? time) {
                      if (time == null|| viewModel.ended) {
                        return InkWell(
                          onTap: (){
                            viewModel.onResendClick(phone);
                          },
                          child: Column(
                            children: [
                              Text(l10n.vnaprlc,
                                // "Vous n’avez pas reçu le code ?\nDemander un nouveau",
                                style: const TextStyle(
                                  color: primaryColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              vSpace(2),
                              Text(l10n.dun,
                                // "Vous n’avez pas reçu le code ?\nDemander un nouveau",
                                style: const TextStyle(
                                  color: primaryColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        );
                      }
                      var min = '${time.min??00}'.padLeft(2,'0');
                      var sec = '${time.sec??00}'.padLeft(2,'0');
                      return Column(
                        children: [
                          Text( l10n.duncd,
                            // "Demandez un nouveau code dans",
                            style: const TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          vSpace(2),
                          Text( '$min:$sec',
                            style: const TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center, ),
                        ],
                      );
                    },
                  ),
                )
              ),
              AppButton(
                onTap: (){
                  viewModel.onContinueBtnClick(
                      phone.phoneNumber
                          .toString().replaceAll(" ", ""));
                },
                borderColor: const Color(0xFF1E1E1E),
                colorBg: const Color(0xFF1E1E1E),
                title: l10n.vrfr,
                // "Vérifier",
                //'Continuer',
              ),
            ],
          )
        ),
      ),
    );
  }

  @override
  CodeVerificationViewmodel viewModelBuilder(
    BuildContext context,
  ) =>
      CodeVerificationViewmodel();
}
