import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../commons/app_colors.dart';
import '../../../../commons/app_ui_helpers.dart';
import 'register_otp_viewmodel.dart';

class RegisterOtpView extends StackedView<RegisterOtpViewModel> {
  const RegisterOtpView({super.key});

  @override
  Widget builder(
    BuildContext context,
    RegisterOtpViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              vSpace(40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Confirmez votre téléphone',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: black,
                      fontFamily: 'CenturyGothic',
                    ),
                  ),
                  Container(
                    height: 2,
                    width: 50,
                    color: colorGreen,
                    margin: const EdgeInsets.only(top: 4),
                  ),
                ],
              ),
              vSpace(40),
              const Text(
                'Un code de confirmation a été envoyé sur le +229 66246031',
                style: TextStyle(
                  fontSize: 14,
                  color: black,
                  fontFamily: 'CenturyGothic',
                ),
              ),
              vSpace(32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(4, (index) {
                  return Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0xFFE0E0E0), width: 1.5),
                    ),
                    child: TextField(
                      controller: viewModel.otpControllers[index],
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: black,
                      ),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        counterText: '',
                      ),
                      onChanged: (value) {
                        if (value.length == 1 && index < 3) {
                          FocusScope.of(context).nextFocus();
                        }
                        if (value.length == 1 && index == 3) {
                          viewModel.onOtpComplete();
                        }
                      },
                    ),
                  );
                }),
              ),
              vSpace(24),
              Center(
                child: GestureDetector(
                  onTap: viewModel.canResend ? viewModel.onResendPressed : null,
                  child: Text(
                    viewModel.canResend
                        ? 'Renvoyer le code'
                        : 'Renvoyer le code dans ${viewModel.countdown}s',
                    style: TextStyle(
                      color: viewModel.canResend ? colorGreen : const Color(0xFF888888),
                      fontSize: 14,
                      fontFamily: 'CenturyGothic',
                    ),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  RegisterOtpViewModel viewModelBuilder(BuildContext context) =>
      RegisterOtpViewModel();

  @override
  void onViewModelReady(RegisterOtpViewModel viewModel) =>
      viewModel.startCountdown();
}
