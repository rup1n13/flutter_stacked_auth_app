import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../commons/app_colors.dart';
import '../../../../commons/app_ui_helpers.dart';
import '../../../components/widget/app_button.dart';
import '../../../components/widget/app_input.dart';
import 'register_address_viewmodel.dart';

class RegisterAddressView extends StackedView<RegisterAddressViewModel> {
  const RegisterAddressView({super.key});

  @override
  Widget builder(
    BuildContext context,
    RegisterAddressViewModel viewModel,
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
          'Adresse',
          style: TextStyle(
            color: black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'CenturyGothic',
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                vSpace(20),
                const Text(
                  'Où habitez-vous ?',
                  style: TextStyle(
                    fontSize: 14,
                    color: colorGrey,
                    fontFamily: 'CenturyGothic',
                  ),
                ),
                vSpace(24),
                AppInput(
                  controller: viewModel.countryController,
                  label: 'Pays',
                  hintText: 'Sélectionnez votre pays',
                ),
                vSpace(16),
                AppInput(
                  controller: viewModel.cityController,
                  label: 'Ville',
                  hintText: 'Entrez votre ville',
                ),
                vSpace(16),
                AppInput(
                  controller: viewModel.districtController,
                  label: 'Quartier',
                  hintText: 'Entrez votre quartier',
                ),
                vSpace(16),
                AppInput(
                  controller: viewModel.addressController,
                  label: 'Adresse complète',
                  hintText: 'Entrez votre adresse',
                ),
                vSpace(32),
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
      ),
    );
  }

  @override
  RegisterAddressViewModel viewModelBuilder(BuildContext context) =>
      RegisterAddressViewModel();

  @override
  void onDispose(RegisterAddressViewModel viewModel) {
    viewModel.dispose();
    super.onDispose(viewModel);
  }
}
