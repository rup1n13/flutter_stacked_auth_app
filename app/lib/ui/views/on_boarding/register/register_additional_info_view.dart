import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../commons/app_colors.dart';
import '../../../../commons/app_ui_helpers.dart';
import '../../../components/widget/app_button.dart';
import '../../../components/widget/app_input.dart';
import 'register_additional_info_viewmodel.dart';

class RegisterAdditionalInfoView extends StackedView<RegisterAdditionalInfoViewModel> {
  const RegisterAdditionalInfoView({super.key});

  @override
  Widget builder(
    BuildContext context,
    RegisterAdditionalInfoViewModel viewModel,
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
        title: const Text(
          'Informations complémentaires',
          style: TextStyle(
            color: black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'CenturyGothic',
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      vSpace(20),
                      AppInput(
                        hintText: 'Profession',
                        controller: viewModel.professionController,
                      ),
                      vSpace(16),
                      AppInput(
                        hintText: 'Employeur / Entreprise',
                        controller: viewModel.employerController,
                      ),
                      vSpace(16),
                      AppInput(
                        hintText: 'Numéro d\'identification nationale',
                        controller: viewModel.nationalIdController,
                      ),
                      vSpace(16),
                      AppInput(
                        hintText: 'Lieu de naissance',
                        controller: viewModel.birthPlaceController,
                      ),
                      vSpace(16),
                      AppInput(
                        hintText: 'Nationalité',
                        controller: viewModel.nationalityController,
                      ),
                    ],
                  ),
                ),
              ),
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
  RegisterAdditionalInfoViewModel viewModelBuilder(BuildContext context) =>
      RegisterAdditionalInfoViewModel();

  @override
  void onDispose(RegisterAdditionalInfoViewModel viewModel) {
    viewModel.professionController.dispose();
    viewModel.employerController.dispose();
    viewModel.nationalIdController.dispose();
    viewModel.birthPlaceController.dispose();
    viewModel.nationalityController.dispose();
    super.onDispose(viewModel);
  }
}
