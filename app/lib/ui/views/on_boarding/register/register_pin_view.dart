import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../commons/app_colors.dart';
import '../../../../commons/app_ui_helpers.dart';
import '../../../components/widget/app_button.dart';
import 'register_pin_viewmodel.dart';

class RegisterPinView extends StackedView<RegisterPinViewModel> {
  const RegisterPinView({super.key});

  @override
  Widget builder(
    BuildContext context,
    RegisterPinViewModel viewModel,
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
                    'Créer un mot de passe (PIN)',
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
                'Définissez votre PIN',
                style: TextStyle(
                  fontSize: 14,
                  color: black,
                  fontFamily: 'CenturyGothic',
                ),
              ),
              vSpace(12),
              Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: const Color(0xFFE0E0E0)),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: viewModel.pinController,
                        obscureText: !viewModel.showPin,
                        keyboardType: TextInputType.number,
                        maxLength: 4,
                        style: const TextStyle(
                          fontSize: 20,
                          letterSpacing: 8,
                          color: black,
                        ),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          counterText: '',
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        viewModel.showPin ? Icons.visibility : Icons.visibility_off,
                        color: const Color(0xFF888888),
                        size: 20,
                      ),
                      onPressed: viewModel.togglePinVisibility,
                    ),
                  ],
                ),
              ),
              vSpace(8),
              const Text(
                'Uniquement les chiffres de 4 digits',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF888888),
                  fontFamily: 'CenturyGothic',
                ),
              ),
              vSpace(32),
              const Text(
                'Confirmez le PIN',
                style: TextStyle(
                  fontSize: 14,
                  color: black,
                  fontFamily: 'CenturyGothic',
                ),
              ),
              vSpace(12),
              Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: const Color(0xFFE0E0E0)),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: viewModel.confirmPinController,
                        obscureText: !viewModel.showConfirmPin,
                        keyboardType: TextInputType.number,
                        maxLength: 4,
                        style: const TextStyle(
                          fontSize: 20,
                          letterSpacing: 8,
                          color: black,
                        ),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          counterText: '',
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        viewModel.showConfirmPin ? Icons.visibility : Icons.visibility_off,
                        color: const Color(0xFF888888),
                        size: 20,
                      ),
                      onPressed: viewModel.toggleConfirmPinVisibility,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: AppButton(
                  onTap: viewModel.onValidatePressed,
                  title: 'Valider',
                  colorBg: colorGreen,
                  height: 50,
                ),
              ),
              vSpace(24),
            ],
          ),
        ),
      ),
    );
  }

  @override
  RegisterPinViewModel viewModelBuilder(BuildContext context) =>
      RegisterPinViewModel();

  @override
  void onDispose(RegisterPinViewModel viewModel) {
    viewModel.pinController.dispose();
    viewModel.confirmPinController.dispose();
    super.onDispose(viewModel);
  }
}
