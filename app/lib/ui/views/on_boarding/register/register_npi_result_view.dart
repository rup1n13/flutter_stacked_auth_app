import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../commons/app_colors.dart';
import '../../../../commons/app_ui_helpers.dart';
import '../../../components/widget/app_button.dart';
import '../../../components/widget/app_input.dart';
import 'register_npi_result_viewmodel.dart';

class RegisterNpiResultView extends StackedView<RegisterNpiResultViewModel> {
  const RegisterNpiResultView({super.key});

  @override
  Widget builder(
    BuildContext context,
    RegisterNpiResultViewModel viewModel,
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
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFF0F8F5),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    _buildInfoRow(Icons.badge, 'Numéro NIP', '2289074575409'),
                    _buildInfoRow(Icons.person, 'Nom', 'BANDE'),
                    _buildInfoRow(Icons.person_outline, 'Prénoms', 'Alain'),
                    _buildInfoRow(Icons.phone, 'Téléphone', '65246031'),
                    _buildInfoRow(Icons.cake, 'Date de naissance', '10/05/1988'),
                    _buildInfoRow(Icons.favorite, 'Sexe', 'Masculin'),
                    _buildInfoRow(Icons.location_on, 'Adresse', 'Calavi, Tankpè', isLast: true),
                  ],
                ),
              ),
              vSpace(32),
              const Text(
                'Entrez votre téléphone fonctionnel',
                style: TextStyle(
                  fontSize: 16,
                  color: black,
                  fontFamily: 'CenturyGothic',
                ),
              ),
              vSpace(12),
              AppInput(
                hintText: 'Ex: +229 0197000000',
                controller: viewModel.phoneController,
                keyboardType: TextInputType.phone,
              ),
              const Spacer(),
              AppButton(
                onTap: viewModel.onContinuePressed,
                title: 'Suivant',
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

  Widget _buildInfoRow(IconData icon, String label, String value, {bool isLast = false}) {
    return Padding(
      padding: EdgeInsets.only(bottom: isLast ? 0 : 12),
      child: Row(
        children: [
          Icon(icon, size: 20, color: colorGreen),
          hSpace(12),
          Text(
            '$label: ',
            style: const TextStyle(
              fontSize: 14,
              color: colorGrey,
              fontFamily: 'CenturyGothic',
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 14,
                color: black,
                fontFamily: 'CenturyGothic',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  RegisterNpiResultViewModel viewModelBuilder(BuildContext context) =>
      RegisterNpiResultViewModel();

  @override
  void onDispose(RegisterNpiResultViewModel viewModel) {
    viewModel.phoneController.dispose();
    super.onDispose(viewModel);
  }
}
