import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'splash_viewmodel.dart';

class SplashView extends StackedView<SplashViewModel> {
  const SplashView({super.key});

  @override
  Widget builder(
    BuildContext context,
    SplashViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF27AE60),
        ),
        child: Center(
          child: Container(
            width: 150,
            height: 150,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'A',
                      style: TextStyle(
                        color: Color(0xFFEB5757),
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'CenturyGothic',
                      ),
                    ),
                    TextSpan(
                      text: 'rn',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'CenturyGothic',
                      ),
                    ),
                    TextSpan(
                      text: 'abi',
                      style: TextStyle(
                        color: Color(0xFF27AE60),
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'CenturyGothic',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  SplashViewModel viewModelBuilder(BuildContext context) => SplashViewModel();

  @override
  void onViewModelReady(SplashViewModel viewModel) => viewModel.initialize();
}
