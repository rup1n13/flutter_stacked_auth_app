import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../commons/app_colors.dart';
import '../../../../commons/app_ui_helpers.dart';
import '../../../components/widget/app_button.dart';
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
                'Entrez le NPI du membre',
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
                child: TextField(
                  controller: viewModel.npiController,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                    fontSize: 16,
                    color: black,
                    fontFamily: 'CenturyGothic',
                  ),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: '2289074575409',
                    hintStyle: TextStyle(
                      color: Color(0xFFAAAAAA),
                      fontSize: 16,
                      fontFamily: 'CenturyGothic',
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: AppButton(
                  onTap: viewModel.onVerifyPressed,
                  title: 'Vérifier',
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
  RegisterNpiEntryViewModel viewModelBuilder(BuildContext context) =>
      RegisterNpiEntryViewModel();

  @override
  void onDispose(RegisterNpiEntryViewModel viewModel) {
    viewModel.npiController.dispose();
    super.onDispose(viewModel);
  }
}
