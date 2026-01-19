import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';
import '../../../../app/app.router.dart';

class RegisterDocumentViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  bool _hasIdFront = false;
  bool _hasIdBack = false;

  bool get hasIdFront => _hasIdFront;
  bool get hasIdBack => _hasIdBack;

  void onUploadIdFront() {
    _hasIdFront = true;
    notifyListeners();
  }

  void onUploadIdBack() {
    _hasIdBack = true;
    notifyListeners();
  }

  void onContinuePressed() {
    if (_hasIdFront && _hasIdBack) {
      _navigationService.navigateToRegisterSelfieView();
    }
  }
}
