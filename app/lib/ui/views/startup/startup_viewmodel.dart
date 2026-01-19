import 'package:stacked/stacked.dart';
import 'package:nabi/app/app.locator.dart';
import 'package:nabi/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  // Place anything here that needs to happen before we get into the application
  Future runStartupLogic() async {
    // Check if user is logged in, has completed onboarding, etc.
    // For now, always go to splash screen
    
    _navigationService.replaceWithSplashView();
  }
}
