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
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Conditions générales',
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
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Conditions générales d\'utilisation',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: black,
                        fontFamily: 'CenturyGothic',
                      ),
                    ),
                    vSpace(16),
                    _buildTermsText(),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: backgroundColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0, -5),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: viewModel.isAccepted,
                        onChanged: (value) => viewModel.toggleAcceptance(),
                        activeColor: colorGreen,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () => viewModel.toggleAcceptance(),
                          child: const Text(
                            'J\'accepte les conditions générales d\'utilisation',
                            style: TextStyle(
                              fontSize: 14,
                              color: black,
                              fontFamily: 'CenturyGothic',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  vSpace(16),
                  AppButton(
                    onTap: viewModel.onContinuePressed,
                    title: 'Accepter et continuer',
                    colorBg: viewModel.isAccepted ? colorGreen : colorGrey,
                    height: 50,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTermsText() {
    return const Text(
      '''
1. ACCEPTATION DES CONDITIONS
En accédant et en utilisant l'application Nabi, vous acceptez d'être lié par les présentes conditions générales d'utilisation.

2. DESCRIPTION DU SERVICE
Nabi est une plateforme de tontine digitale qui permet aux utilisateurs de participer à des groupes d'épargne collective pour acquérir des biens.

3. INSCRIPTION ET COMPTE
- Vous devez fournir des informations exactes et complètes lors de l'inscription
- Vous êtes responsable de la confidentialité de votre compte
- Vous devez avoir au moins 18 ans pour utiliser ce service

4. VÉRIFICATION D'IDENTITÉ (KYC)
- Une vérification d'identité est requise pour accéder à certaines fonctionnalités
- Vous devez fournir des documents d'identité valides
- Nabi se réserve le droit de refuser ou suspendre un compte si les informations fournies sont incorrectes

5. PARTICIPATION AUX TONTINES
- Les contributions doivent être effectuées dans les délais convenus
- Des pénalités peuvent s'appliquer en cas de retard de paiement
- L'ordre de distribution est déterminé selon les règles de chaque tontine

6. RESPONSABILITÉS
- Nabi agit comme intermédiaire et facilitateur
- Les utilisateurs sont responsables de leurs engagements financiers
- Nabi ne peut être tenu responsable des défauts de paiement des autres participants

7. PROTECTION DES DONNÉES
Vos données personnelles sont collectées et traitées conformément à notre politique de confidentialité.

8. MODIFICATION DES CONDITIONS
Nabi se réserve le droit de modifier ces conditions à tout moment. Les utilisateurs seront informés des changements importants.

9. RÉSILIATION
Nabi peut suspendre ou résilier votre compte en cas de violation de ces conditions.

10. CONTACT
Pour toute question concernant ces conditions, contactez-nous via l'application.

Dernière mise à jour : Janvier 2026
      ''',
      style: TextStyle(
        fontSize: 13,
        color: colorGrey,
        height: 1.6,
        fontFamily: 'CenturyGothic',
      ),
    );
  }

  @override
  RegisterTermsViewModel viewModelBuilder(BuildContext context) =>
      RegisterTermsViewModel();
}
