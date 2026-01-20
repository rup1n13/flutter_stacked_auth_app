import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../commons/app_colors.dart';
import '../../../../commons/app_ui_helpers.dart';
import '../../../components/widget/app_button.dart';
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
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFFF0F8F5),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xFFE8F5E9), width: 1),
                ),
                child: Column(
                  children: [
                    _buildInfoRow(Icons.badge_outlined, 'Numéro NIP', '2289074575409'),
                    vSpace(16),
                    _buildInfoRow(Icons.person_outline, 'Nom', 'BANDE'),
                    vSpace(16),
                    _buildInfoRow(Icons.person_outline, 'Prénoms', 'Alain'),
                    vSpace(16),
                    _buildInfoRow(Icons.phone_outlined, 'Téléphone', '65246031'),
                    vSpace(16),
                    _buildInfoRow(Icons.cake_outlined, 'Date de naissance', '10/05/1988'),
                    vSpace(16),
                    _buildInfoRow(Icons.favorite_border, 'Sexe', 'Masculin'),
                    vSpace(16),
                    _buildInfoRow(Icons.location_on_outlined, 'Adresse', 'Calavi, Tankpè', isLast: true),
                  ],
                ),
              ),
              vSpace(32),
              const Text(
                'Entrez votre téléphone fonctionnel',
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
                  controller: viewModel.phoneController,
                  keyboardType: TextInputType.phone,
                  style: const TextStyle(
                    fontSize: 16,
                    color: black,
                    fontFamily: 'CenturyGothic',
                  ),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Ex: +229 0197000000',
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
                  onTap: viewModel.onContinuePressed,
                  title: 'Suivant',
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

  Widget _buildInfoRow(IconData icon, String label, String value, {bool isLast = false}) {
    return Row(
      children: [
        Icon(icon, size: 18, color: colorGreen),
        hSpace(12),
        Expanded(
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xFF888888),
              fontFamily: 'CenturyGothic',
            ),
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
            color: black,
            fontFamily: 'CenturyGothic',
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
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
