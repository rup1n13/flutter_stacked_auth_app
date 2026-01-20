import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../commons/app_colors.dart';
import 'register_final_success_viewmodel.dart';

class RegisterFinalSuccessView extends StackedView<RegisterFinalSuccessViewModel> {
  const RegisterFinalSuccessView({super.key});

  @override
  Widget builder(
    BuildContext context,
    RegisterFinalSuccessViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                  color: colorGreen,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.check,
                  size: 50,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                'Bravo !',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: black,
                  fontFamily: 'CenturyGothic',
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  'Votre compte Nabi a été créé avec succès.',
                  style: TextStyle(
                    fontSize: 16,
                    color: black,
                    fontFamily: 'CenturyGothic',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  RegisterFinalSuccessViewModel viewModelBuilder(BuildContext context) =>
      RegisterFinalSuccessViewModel();

  @override
  void onViewModelReady(RegisterFinalSuccessViewModel viewModel) =>
      viewModel.initialize();
}
