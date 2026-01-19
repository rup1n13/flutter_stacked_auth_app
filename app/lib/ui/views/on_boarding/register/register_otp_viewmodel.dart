import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';
import '../../../../app/app.router.dart';

class RegisterOtpViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  
  String otpCode = '';

  void onVerifyPressed() {
    if (otpCode.length == 6) {
      _navigationService.navigateToRegisterPersonalInfoView();
    }
  }

  void onResendPressed() {
    // Static UI - no actual resend logic
  }
}
