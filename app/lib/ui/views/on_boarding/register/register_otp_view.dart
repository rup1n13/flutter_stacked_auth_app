import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../commons/app_colors.dart';
import '../../../../commons/app_ui_helpers.dart';
import '../../../components/widget/app_button.dart';
import '../../../components/widget/app_otp.dart';
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
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              vSpace(20),
              const Text(
                'Vérification',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: black,
                  fontFamily: 'CenturyGothic',
                ),
              ),
              vSpace(12),
              const Text(
                'Entrez le code que nous vous avons\nenvoyé par SMS',
                style: TextStyle(
                  fontSize: 14,
                  color: colorGrey,
                  fontFamily: 'CenturyGothic',
                ),
              ),
              vSpace(40),
              AppOtp(
                onSubmit: (code) {
                  viewModel.otpCode = code;
                },
              ),
              vSpace(24),
              Center(
                child: TextButton(
                  onPressed: viewModel.onResendPressed,
                  child: const Text(
                    'Renvoyer le code',
                    style: TextStyle(
                      color: colorGreen,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'CenturyGothic',
                    ),
                  ),
                ),
              ),
              const Spacer(),
              AppButton(
                onTap: viewModel.onVerifyPressed,
                title: 'Vérifier',
                colorBg: colorGreen,
                height: 50,
              ),
              vSpace(20),
            ],
          ),
        ),
      ),
    );
  }

  @override
  RegisterOtpViewModel viewModelBuilder(BuildContext context) =>
      RegisterOtpViewModel();
}
