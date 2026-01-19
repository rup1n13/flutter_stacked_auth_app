import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';
import '../../../../app/app.router.dart';

class RegisterSelfieViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  bool _hasSelfie = false;
  bool get hasSelfie => _hasSelfie;

  void onTakeSelfie() {
    _hasSelfie = true;
    notifyListeners();
  }

  void onContinuePressed() {
    if (_hasSelfie) {
      _navigationService.navigateToRegisterSuccessView();
    }
  }
}
