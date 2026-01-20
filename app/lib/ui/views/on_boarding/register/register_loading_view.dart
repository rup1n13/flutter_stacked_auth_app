import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'register_loading_viewmodel.dart';

class RegisterLoadingView extends StackedView<RegisterLoadingViewModel> {
  const RegisterLoadingView({super.key});

  @override
  Widget builder(
    BuildContext context,
    RegisterLoadingViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF27AE60),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'N',
                      style: TextStyle(
                        color: Color(0xFFEB5757),
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'CenturyGothic',
                      ),
                    ),
                    TextSpan(
                      text: 'abi',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'CenturyGothic',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              const SizedBox(
                width: 50,
                height: 50,
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  RegisterLoadingViewModel viewModelBuilder(BuildContext context) =>
      RegisterLoadingViewModel();

  @override
  void onViewModelReady(RegisterLoadingViewModel viewModel) =>
      viewModel.initialize();
}
