import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../commons/app_colors.dart';
import '../../../../commons/app_ui_helpers.dart';
import '../../../components/widget/app_button.dart';
import '../../../components/widget/app_phone_input.dart';
import 'register_phone_viewmodel.dart';

class RegisterPhoneView extends StackedView<RegisterPhoneViewModel> {
  const RegisterPhoneView({super.key});

  @override
  Widget builder(
    BuildContext context,
    RegisterPhoneViewModel viewModel,
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
              const Text(
                'Entrez votre numéro\nde téléphone',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: black,
                  fontFamily: 'CenturyGothic',
                ),
              ),
              vSpace(12),
              const Text(
                'Nous vous enverrons un code de\nvérification',
                style: TextStyle(
                  fontSize: 14,
                  color: colorGrey,
                  fontFamily: 'CenturyGothic',
                ),
              ),
              vSpace(40),
              AppPhoneInput(
                hintText: 'Numéro de téléphone',
                controller: viewModel.phoneController,
                onInputValidated: (isValid) {},
                onSaved: (phone) {
                  viewModel.phoneNumber = phone?.phoneNumber ?? '';
                  return null;
                },
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
  RegisterPhoneViewModel viewModelBuilder(BuildContext context) =>
      RegisterPhoneViewModel();

  @override
  void onDispose(RegisterPhoneViewModel viewModel) {
    viewModel.phoneController.dispose();
    super.onDispose(viewModel);
  }
}
