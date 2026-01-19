import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../commons/app_colors.dart';
import '../../../../commons/app_ui_helpers.dart';
import '../../../components/widget/app_button.dart';
import 'register_success_viewmodel.dart';

class RegisterSuccessView extends StackedView<RegisterSuccessViewModel> {
  const RegisterSuccessView({super.key});

  @override
  Widget builder(
    BuildContext context,
    RegisterSuccessViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: colorGreenLight,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.check_circle,
                  size: 80,
                  color: colorGreen,
                ),
              ),
              vSpace(32),
              const Text(
                'Inscription réussie !',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: black,
                  fontFamily: 'CenturyGothic',
                ),
              ),
              vSpace(16),
              const Text(
                'Votre compte a été créé avec succès.\nVous pouvez maintenant commencer à utiliser Nabi.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: colorGrey,
                  height: 1.5,
                  fontFamily: 'CenturyGothic',
                ),
              ),
              const Spacer(),
              AppButton(
                onTap: viewModel.onContinuePressed,
                title: 'Accéder à mon compte',
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
  RegisterSuccessViewModel viewModelBuilder(BuildContext context) =>
      RegisterSuccessViewModel();
}
