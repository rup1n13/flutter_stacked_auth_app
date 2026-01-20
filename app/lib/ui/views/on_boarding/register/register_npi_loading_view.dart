import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../commons/app_colors.dart';
import '../../../../commons/app_ui_helpers.dart';
import 'register_npi_loading_viewmodel.dart';

class RegisterNpiLoadingView extends StackedView<RegisterNpiLoadingViewModel> {
  const RegisterNpiLoadingView({super.key});

  @override
  Widget builder(
    BuildContext context,
    RegisterNpiLoadingViewModel viewModel,
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
                  color: colorGrey,
                  fontFamily: 'CenturyGothic',
                ),
              ),
              vSpace(12),
              Container(
                height: 55,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: const Color(0xFFE0E0E0)),
                ),
                alignment: Alignment.centerLeft,
                child: const Text(
                  '2289074575409',
                  style: TextStyle(
                    fontSize: 16,
                    color: colorGrey,
                    fontFamily: 'CenturyGothic',
                  ),
                ),
              ),
              const Spacer(),
              const Center(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: CircularProgressIndicator(
                    strokeWidth: 3,
                    valueColor: AlwaysStoppedAnimation<Color>(colorGreen),
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
  RegisterNpiLoadingViewModel viewModelBuilder(BuildContext context) =>
      RegisterNpiLoadingViewModel();

  @override
  void onViewModelReady(RegisterNpiLoadingViewModel viewModel) =>
      viewModel.initialize();
}
