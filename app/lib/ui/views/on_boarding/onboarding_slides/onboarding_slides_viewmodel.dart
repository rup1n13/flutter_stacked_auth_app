import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';
import '../../../../app/app.router.dart';

class OnboardingSlidesViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final PageController pageController = PageController();
  
  int _currentPage = 0;
  int get currentPage => _currentPage;

  void initialize() {
    // Initialization logic if needed
  }

  void onPageChanged(int page) {
    _currentPage = page;
    notifyListeners();
  }

  void onNextPressed() {
    if (_currentPage < 2) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      navigateToRegister();
    }
  }

  void onSkipPressed() {
    navigateToRegister();
  }

  void navigateToRegister() {
    _navigationService.replaceWithRegisterNpiEntryView();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
