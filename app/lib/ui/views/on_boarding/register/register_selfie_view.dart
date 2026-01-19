import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../commons/app_colors.dart';
import '../../../../commons/app_ui_helpers.dart';
import '../../../components/widget/app_button.dart';
import 'register_selfie_viewmodel.dart';

class RegisterSelfieView extends StackedView<RegisterSelfieViewModel> {
  const RegisterSelfieView({super.key});

  @override
  Widget builder(
    BuildContext context,
    RegisterSelfieViewModel viewModel,
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
          'Photo de profil',
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              vSpace(40),
              const Text(
                'Prenez une photo de votre visage',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: black,
                  fontFamily: 'CenturyGothic',
                ),
              ),
              vSpace(12),
              const Text(
                'Assurez-vous d\'être dans un endroit bien éclairé\net retirez vos lunettes si possible',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: colorGrey,
                  fontFamily: 'CenturyGothic',
                ),
              ),
              vSpace(40),
              GestureDetector(
                onTap: viewModel.onTakeSelfie,
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: viewModel.hasSelfie ? colorGreenLight : colorUnFocus,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: viewModel.hasSelfie
                          ? colorGreen
                          : colorGrey.withOpacity(0.3),
                      width: 3,
                    ),
                  ),
                  child: Icon(
                    viewModel.hasSelfie
                        ? Icons.check_circle
                        : Icons.camera_alt_outlined,
                    size: 60,
                    color: viewModel.hasSelfie ? colorGreen : colorGrey,
                  ),
                ),
              ),
              vSpace(24),
              if (!viewModel.hasSelfie)
                const Text(
                  'Appuyez pour prendre une photo',
                  style: TextStyle(
                    fontSize: 14,
                    color: colorGrey,
                    fontFamily: 'CenturyGothic',
                  ),
                ),
              const Spacer(),
              AppButton(
                onTap: viewModel.onContinuePressed,
                title: 'Continuer',
                colorBg: viewModel.hasSelfie ? colorGreen : colorGrey,
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
  RegisterSelfieViewModel viewModelBuilder(BuildContext context) =>
      RegisterSelfieViewModel();
}
