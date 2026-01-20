import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../commons/app_colors.dart';
import '../../../../commons/app_ui_helpers.dart';
import '../../../components/widget/app_button.dart';
import '../../../components/widget/app_input.dart';
import 'register_bank_info_viewmodel.dart';

class RegisterBankInfoView extends StackedView<RegisterBankInfoViewModel> {
  const RegisterBankInfoView({super.key});

  @override
  Widget builder(
    BuildContext context,
    RegisterBankInfoViewModel viewModel,
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
          'Informations bancaires',
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
                      const Text(
                        'Informations bancaires (Optionnel)',
                        style: TextStyle(
                          fontSize: 16,
                          color: colorGrey,
                          fontFamily: 'CenturyGothic',
                        ),
                      ),
                      vSpace(24),
                      AppInput(
                        hintText: 'Nom de la banque',
                        controller: viewModel.bankNameController,
                      ),
                      vSpace(16),
                      AppInput(
                        hintText: 'Numéro de compte',
                        controller: viewModel.accountNumberController,
                      ),
                      vSpace(16),
                      AppInput(
                        hintText: 'Nom du titulaire',
                        controller: viewModel.accountHolderController,
                      ),
                      vSpace(16),
                      AppInput(
                        hintText: 'IBAN / RIB',
                        controller: viewModel.ibanController,
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
  RegisterBankInfoViewModel viewModelBuilder(BuildContext context) =>
      RegisterBankInfoViewModel();

  @override
  void onDispose(RegisterBankInfoViewModel viewModel) {
    viewModel.bankNameController.dispose();
    viewModel.accountNumberController.dispose();
    viewModel.accountHolderController.dispose();
    viewModel.ibanController.dispose();
    super.onDispose(viewModel);
  }
}
