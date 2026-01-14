import 'package:stacked/stacked.dart';
import 'package:stacked_app/app/app.locator.dart';
import 'package:stacked_app/app/app.router.dart';
import 'package:stacked_app/services/auth_service.dart';
import 'package:stacked_services/stacked_services.dart';

class RegisterViewmodel extends BaseViewModel {
  final _authservice = locator<AuthService>();
  final _dialigService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();

  String phone = '';
  String firstName = '';
  String lastName = '';
  String email = '';

  Future<void> register() async {
    setBusy(true);

    try {
      final response = await _authservice.register(
          phone: phone, firstName: firstName, lastName: lastName, email: email);

      await _dialigService.showDialog(
        title: 'success',
        description: response?['message'] ?? 'Registration successful',
      );

      await _navigationService.replaceWithHomeView();
    } catch (e) {
      setError(e.toString());

      await _dialigService.showDialog(
        title: 'Registration Failed',
        description: e.toString(),
      );
    } finally {
      setBusy(false);
    }
  }
}
