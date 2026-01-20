import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../commons/app_colors.dart';
import '../../../../commons/app_ui_helpers.dart';
import '../../../components/widget/app_button.dart';
import 'register_verification_pending_viewmodel.dart';

class RegisterVerificationPendingView extends StackedView<RegisterVerificationPendingViewModel> {
  const RegisterVerificationPendingView({super.key});

  @override
  Widget builder(
    BuildContext context,
    RegisterVerificationPendingViewModel viewModel,
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
              vSpace(40),
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
                'Vos informations sont en cours de\nvérification. Veuillez patienter.',
                style: TextStyle(
                  fontSize: 14,
                  color: colorGrey,
                  fontFamily: 'CenturyGothic',
                ),
              ),
              vSpace(60),
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: colorGreen.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.schedule,
                        size: 50,
                        color: colorGreen,
                      ),
                    ),
                    vSpace(24),
                    const Text(
                      'Vérification en cours...',
                      style: TextStyle(
                        fontSize: 16,
                        color: colorGrey,
                        fontFamily: 'CenturyGothic',
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              AppButton(
                onTap: viewModel.onContinuePressed,
                title: 'Continuer',
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
  RegisterVerificationPendingViewModel viewModelBuilder(BuildContext context) =>
      RegisterVerificationPendingViewModel();
}
