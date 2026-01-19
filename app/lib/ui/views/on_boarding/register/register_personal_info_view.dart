import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../commons/app_colors.dart';
import '../../../../commons/app_ui_helpers.dart';
import '../../../components/widget/app_button.dart';
import '../../../components/widget/app_input.dart';
import 'register_personal_info_viewmodel.dart';

class RegisterPersonalInfoView
    extends StackedView<RegisterPersonalInfoViewModel> {
  const RegisterPersonalInfoView({super.key});

  @override
  Widget builder(
    BuildContext context,
    RegisterPersonalInfoViewModel viewModel,
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
          'Informations personnelles',
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
                  'Remplissez vos informations',
                  style: TextStyle(
                    fontSize: 14,
                    color: colorGrey,
                    fontFamily: 'CenturyGothic',
                  ),
                ),
                vSpace(24),
                AppInput(
                  controller: viewModel.lastNameController,
                  label: 'Nom',
                  hintText: 'Entrez votre nom',
                ),
                vSpace(16),
                AppInput(
                  controller: viewModel.firstNameController,
                  label: 'Prénom',
                  hintText: 'Entrez votre prénom',
                ),
                vSpace(16),
                AppInput(
                  controller: viewModel.emailController,
                  label: 'Email (optionnel)',
                  hintText: 'Entrez votre email',
                  textInputType: TextInputType.emailAddress,
                ),
                vSpace(16),
                GestureDetector(
                  onTap: () => viewModel.selectDateOfBirth(context),
                  child: AbsorbPointer(
                    child: AppInput(
                      controller: viewModel.dateOfBirthController,
                      label: 'Date de naissance',
                      hintText: 'JJ/MM/AAAA',
                    ),
                  ),
                ),
                vSpace(16),
                const Text(
                  'Sexe',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: black,
                    fontFamily: 'CenturyGothic',
                  ),
                ),
                vSpace(8),
                Row(
                  children: [
                    Expanded(
                      child: _buildGenderOption(
                        label: 'Masculin',
                        isSelected: viewModel.gender == 'M',
                        onTap: () => viewModel.selectGender('M'),
                      ),
                    ),
                    hSpace(12),
                    Expanded(
                      child: _buildGenderOption(
                        label: 'Féminin',
                        isSelected: viewModel.gender == 'F',
                        onTap: () => viewModel.selectGender('F'),
                      ),
                    ),
                  ],
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

  Widget _buildGenderOption({
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          color: isSelected ? colorGreenLight : colorUnFocus,
          border: Border.all(
            color: isSelected ? colorGreen : colorUnFocus,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: isSelected ? colorGreen : colorGrey,
              fontFamily: 'CenturyGothic',
            ),
          ),
        ),
      ),
    );
  }

  @override
  RegisterPersonalInfoViewModel viewModelBuilder(BuildContext context) =>
      RegisterPersonalInfoViewModel();

  @override
  void onDispose(RegisterPersonalInfoViewModel viewModel) {
    viewModel.dispose();
    super.onDispose(viewModel);
  }
}
