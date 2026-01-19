import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../commons/app_colors.dart';
import '../../../../commons/app_ui_helpers.dart';
import '../../../components/widget/app_button.dart';
import 'register_document_viewmodel.dart';

class RegisterDocumentView extends StackedView<RegisterDocumentViewModel> {
  const RegisterDocumentView({super.key});

  @override
  Widget builder(
    BuildContext context,
    RegisterDocumentViewModel viewModel,
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
          'Documents',
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              vSpace(20),
              const Text(
                'Pièce d\'identité',
                style: TextStyle(
                  fontSize: 14,
                  color: colorGrey,
                  fontFamily: 'CenturyGothic',
                ),
              ),
              vSpace(8),
              const Text(
                'Prenez une photo de votre carte d\'identité nationale ou passeport',
                style: TextStyle(
                  fontSize: 12,
                  color: colorGrey,
                  fontFamily: 'CenturyGothic',
                ),
              ),
              vSpace(24),
              _buildDocumentUploadBox(
                title: 'Recto de la pièce',
                isUploaded: viewModel.hasIdFront,
                onTap: viewModel.onUploadIdFront,
              ),
              vSpace(16),
              _buildDocumentUploadBox(
                title: 'Verso de la pièce',
                isUploaded: viewModel.hasIdBack,
                onTap: viewModel.onUploadIdBack,
              ),
              const Spacer(),
              AppButton(
                onTap: viewModel.onContinuePressed,
                title: 'Continuer',
                colorBg: (viewModel.hasIdFront && viewModel.hasIdBack)
                    ? colorGreen
                    : colorGrey,
                height: 50,
              ),
              vSpace(20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDocumentUploadBox({
    required String title,
    required bool isUploaded,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 160,
        decoration: BoxDecoration(
          color: isUploaded ? colorGreenLight : colorUnFocus,
          border: Border.all(
            color: isUploaded ? colorGreen : colorGrey.withOpacity(0.3),
            width: 1.5,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              isUploaded ? Icons.check_circle : Icons.add_a_photo_outlined,
              size: 48,
              color: isUploaded ? colorGreen : colorGrey,
            ),
            vSpace(12),
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: isUploaded ? colorGreen : colorGrey,
                fontFamily: 'CenturyGothic',
              ),
            ),
            if (!isUploaded) ...[
              vSpace(4),
              const Text(
                'Appuyez pour ajouter',
                style: TextStyle(
                  fontSize: 12,
                  color: colorGrey,
                  fontFamily: 'CenturyGothic',
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  @override
  RegisterDocumentViewModel viewModelBuilder(BuildContext context) =>
      RegisterDocumentViewModel();
}
