import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';
import '../../../../app/app.router.dart';

class RegisterFinalSuccessViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  Future<void> initialize() async {
    await Future.delayed(const Duration(seconds: 3));
    _navigationService.replaceWithHomeView();
  }
}
