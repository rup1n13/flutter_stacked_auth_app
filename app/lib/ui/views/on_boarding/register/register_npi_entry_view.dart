import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../commons/app_colors.dart';
import '../../../../commons/app_ui_helpers.dart';
import '../../../components/widget/app_button.dart';
import '../../../components/widget/app_input.dart';
import 'register_npi_entry_viewmodel.dart';

class RegisterNpiEntryView extends StackedView<RegisterNpiEntryViewModel> {
  const RegisterNpiEntryView({super.key});

  @override
  Widget builder(
    BuildContext context,
    RegisterNpiEntryViewModel viewModel,
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
                    'Créer un compte',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: black,
                      fontFamily: 'CenturyGothic',
                    ),
                  ),
                  Container(
                    height: 3,
                    width: 60,
                    color: colorGreen,
                    margin: const EdgeInsets.only(top: 4),
                  ),
                ],
              ),
              vSpace(32),
              const Text(
                'Entrez le NPI du membre',
                style: TextStyle(
                  fontSize: 16,
                  color: black,
                  fontFamily: 'CenturyGothic',
                ),
              ),
              vSpace(12),
              AppInput(
                hintText: '2289074575409',
                controller: viewModel.npiController,
                keyboardType: TextInputType.number,
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
  RegisterNpiEntryViewModel viewModelBuilder(BuildContext context) =>
      RegisterNpiEntryViewModel();

  @override
  void onDispose(RegisterNpiEntryViewModel viewModel) {
    viewModel.npiController.dispose();
    super.onDispose(viewModel);
  }
}
