import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../commons/app_colors.dart';
import '../../../../commons/app_ui_helpers.dart';
import '../../../components/widget/app_button.dart';
import 'register_terms_viewmodel.dart';

class RegisterTermsView extends StackedView<RegisterTermsViewModel> {
  const RegisterTermsView({super.key});

  @override
  Widget builder(
    BuildContext context,
    RegisterTermsViewModel viewModel,
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
                    'Conditions générales d\'utilisation',
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
              vSpace(24),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F7FA),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1. Objet : L\'application permet de créer, gérer et suivre des tontines entre membres.\n\n'
                          '2. Inscription : Chaque utilisateur doit fournir des informations exactes et protéger ses identifiants.\n\n'
                          '3. Fonctionnement : Les règles de la tontine (montant, fréquence, ordre de passage) sont fixées par l\'administrateur et doivent être respectées par tous.\n\n'
                          '4. Engagements : Chaque membre s\'engage à payer ses cotisations dans les délais et à respecter les autres participants.\n\n'
                          '5. Responsabilités :\n'
                          '• L\'application n\'est qu\'un outil de gestion et n\'est pas responsable des litiges ou impayés entre utilisateurs.\n'
                          '• Chaque utilisateur est responsable de ses engagements.\n\n'
                          '1. Données personnelles : Les informations des utilisateurs sont protégées et utilisées uniquement pour le bon fonctionnement de l\'application.\n\n'
                          '2. Résiliation : Le non-respect des règles peut entraîner la suspension du compte.',
                          style: TextStyle(
                            fontSize: 13,
                            color: black,
                            height: 1.6,
                            fontFamily: 'CenturyGothic',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              vSpace(20),
              Row(
                children: [
                  GestureDetector(
                    onTap: viewModel.toggleAcceptance,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: viewModel.isAccepted ? colorGreen : Colors.white,
                        border: Border.all(
                          color: viewModel.isAccepted ? colorGreen : const Color(0xFFE0E0E0),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: viewModel.isAccepted
                          ? const Icon(Icons.check, size: 14, color: Colors.white)
                          : null,
                    ),
                  ),
                  hSpace(12),
                  const Expanded(
                    child: Text(
                      'J\'accepte les conditions d\'utilisation',
                      style: TextStyle(
                        fontSize: 14,
                        color: black,
                        fontFamily: 'CenturyGothic',
                      ),
                    ),
                  ),
                ],
              ),
              vSpace(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: AppButton(
                  onTap: viewModel.isAccepted ? () => viewModel.onContinuePressed() : () {},
                  title: 'Continuer',
                  colorBg: viewModel.isAccepted ? colorGreen : const Color(0xFFD9E9DD),
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
  RegisterTermsViewModel viewModelBuilder(BuildContext context) =>
      RegisterTermsViewModel();
}
