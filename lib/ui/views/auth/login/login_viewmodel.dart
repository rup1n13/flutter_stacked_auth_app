import 'package:stacked/stacked.dart';
import 'package:stacked_app/app/app.locator.dart';
import 'package:stacked_app/app/app.router.dart';
import 'package:stacked_app/services/auth_service.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewmodel extends BaseViewModel {
  final _authservice = locator<AuthService>();
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();

  String phone = '';
  String otp = '';

  String? phoneError;
  String? otpError;

  bool _otpRequested = false;
  bool get otpRequested => _otpRequested;

  bool _validatePhone() {
    phoneError = null;

    if (phone.isEmpty) {
      phoneError = "Phone number is required";
      notifyListeners();
      return false;
    }

    if (!phone.startsWith('+')) {
      phoneError = "Phone number must include country code";
      notifyListeners();
      return false;
    }

    return true;
  }

  bool _validateOtp() {
    otpError = null;

    if (otp.isEmpty) {
      otpError = "OTP is required";
      notifyListeners();
      return false;
    }

    if (otp.length != 6) {
      otpError = "OTP must be 6 digits";
      notifyListeners();
      return false;
    }

    return true;
  }

  Future<void> requestOtp() async {
    if (!_validatePhone()) return;

    setBusy(true);

    try {
      final response = await _authservice.requestOtp(phone: phone);

      _otpRequested = true;
      await _dialogService.showDialog(
        title: 'OTP Sent',
        description: response?['message'] ?? 'OTP has been sent to your phone',
      );
    } catch (e) {
      setError(e.toString());

      await _dialogService.showDialog(
        title: 'OTP Request Failed',
        description: e.toString(),
      );
    } finally {
      setBusy(false);
    }
  }

  Future<void> verifyOtp() async {
    if (!_validateOtp()) return;
    setBusy(true);

    try {
      final response = await _authservice.verifyOtp(phone: phone, otp: otp);

      await _dialogService.showDialog(
        title: 'Success',
        description: response?['message'] ?? 'OTP verified successfully',
      );

      await _navigationService.replaceWithHomeView();
    } catch (e) {
      setError(e.toString());

      await _dialogService.showDialog(
        title: 'OTP Verification Failed',
        description: e.toString(),
      );
    }finally {
      setBusy(false);
    }
  }

  void goBackToPhoneInput() {
    _otpRequested = false;
    otp = '';
    otpError = null;
    notifyListeners();
  }

  void navigateToregisterView() {
    _navigationService.navigateToRegisterView();
  }
}
