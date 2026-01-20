import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'register_processing_viewmodel.dart';

class RegisterProcessingView extends StackedView<RegisterProcessingViewModel> {
  const RegisterProcessingView({super.key});

  @override
  Widget builder(
    BuildContext context,
    RegisterProcessingViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          width: 60,
          height: 60,
          child: CircularProgressIndicator(
            strokeWidth: 4,
            valueColor: AlwaysStoppedAnimation<Color>(
              const Color(0xFF27AE60).withOpacity(0.3),
            ),
          ),
        ),
      ),
    );
  }

  @override
  RegisterProcessingViewModel viewModelBuilder(BuildContext context) =>
      RegisterProcessingViewModel();

  @override
  void onViewModelReady(RegisterProcessingViewModel viewModel) =>
      viewModel.initialize();
}
