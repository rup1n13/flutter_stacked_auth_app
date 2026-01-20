import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';
import '../../../../app/app.router.dart';

class RegisterVerificationPendingViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void onContinuePressed() {
    _navigationService.navigateToRegisterBankInfoView();
  }
}
