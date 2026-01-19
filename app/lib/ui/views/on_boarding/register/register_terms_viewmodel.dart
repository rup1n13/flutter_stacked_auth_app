import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';
import '../../../../app/app.router.dart';

class RegisterTermsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  bool _isAccepted = false;
  bool get isAccepted => _isAccepted;

  void toggleAcceptance() {
    _isAccepted = !_isAccepted;
    notifyListeners();
  }

  void onContinuePressed() {
    if (_isAccepted) {
      _navigationService.navigateToRegisterDocumentView();
    }
  }
}
