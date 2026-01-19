import 'package:nabi/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:nabi/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:nabi/ui/views/home/home_view.dart';
import 'package:nabi/ui/views/startup/startup_view.dart';
import 'package:nabi/ui/views/on_boarding/splash/splash_view.dart';
import 'package:nabi/ui/views/on_boarding/onboarding_slides/onboarding_slides_view.dart';
import 'package:nabi/ui/views/on_boarding/register/register_phone_view.dart';
import 'package:nabi/ui/views/on_boarding/register/register_otp_view.dart';
import 'package:nabi/ui/views/on_boarding/register/register_personal_info_view.dart';
import 'package:nabi/ui/views/on_boarding/register/register_address_view.dart';
import 'package:nabi/ui/views/on_boarding/register/register_terms_view.dart';
import 'package:nabi/ui/views/on_boarding/register/register_document_view.dart';
import 'package:nabi/ui/views/on_boarding/register/register_selfie_view.dart';
import 'package:nabi/ui/views/on_boarding/register/register_success_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: SplashView, initial: true),
    MaterialRoute(page: OnboardingSlidesView),
    MaterialRoute(page: RegisterPhoneView),
    MaterialRoute(page: RegisterOtpView),
    MaterialRoute(page: RegisterPersonalInfoView),
    MaterialRoute(page: RegisterAddressView),
    MaterialRoute(page: RegisterTermsView),
    MaterialRoute(page: RegisterDocumentView),
    MaterialRoute(page: RegisterSelfieView),
    MaterialRoute(page: RegisterSuccessView),
    // @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
