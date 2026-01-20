import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import '../../../../commons/app_colors.dart';
import '../../../../commons/app_ui_helpers.dart';
import '../../../components/widget/app_button.dart';
import 'onboarding_slides_viewmodel.dart';

class OnboardingSlidesView extends StackedView<OnboardingSlidesViewModel> {
  const OnboardingSlidesView({super.key});

  @override
  Widget builder(
    BuildContext context,
    OnboardingSlidesViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: viewModel.pageController,
                onPageChanged: viewModel.onPageChanged,
                children: [
                  _buildSlide(
                    title: 'Réalise tes objectifs avec assurances',
                    description:
                        'Rejoins une tontine sur les produits\n que tu as toujours voulu.',
                    illustration: 'assets/svg/onboarding_slide_1.svg',
                  ),
                  _buildSlide(
                    title: 'Sauvegarde mieux tes revenus',
                    description:
                        'Epargne tes économies à ton rythme\nsecurisé et très transparents crédit.',
                    illustration: 'assets/svg/onboarding_slide_2.svg',
                  ),
                  _buildSlide(
                    title: 'Devient Propriétaire\ngrâce à Nabi',
                    description:
                        'Toutes les produits que toutes\n bénéficie d\'une basse d\'achat que Nabi',
                    illustration: 'assets/svg/onboarding_slide_3.svg',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: viewModel.currentPage == index ? 24 : 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: viewModel.currentPage == index
                              ? colorGreen
                              : colorGrey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                  vSpace(24),
                  AppButton(
                    onTap: viewModel.onNextPressed,
                    title: viewModel.currentPage == 2 ? 'Commencer' : 'Suivant',
                    colorBg: colorGreen,
                    height: 50,
                  ),
                  if (viewModel.currentPage < 2) ...[
                    vSpace(12),
                    TextButton(
                      onPressed: viewModel.onSkipPressed,
                      child: const Text(
                        'Passer',
                        style: TextStyle(
                          color: colorGrey,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSlide({
    required String title,
    required String description,
    required String illustration,
  }) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 250,
            child: SvgPicture.asset(
              illustration,
              fit: BoxFit.contain,
            ),
          ),
          vSpace(40),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: black,
              fontFamily: 'CenturyGothic',
            ),
          ),
          vSpace(16),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              color: colorGrey,
              height: 1.5,
              fontFamily: 'CenturyGothic',
            ),
          ),
        ],
      ),
    );
  }

  @override
  OnboardingSlidesViewModel viewModelBuilder(BuildContext context) =>
      OnboardingSlidesViewModel();

  @override
  void onViewModelReady(OnboardingSlidesViewModel viewModel) =>
      viewModel.initialize();
}
