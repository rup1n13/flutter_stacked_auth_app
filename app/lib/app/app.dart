import 'package:nabi/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:nabi/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:nabi/ui/views/home/home_view.dart';
import 'package:nabi/ui/views/startup/startup_view.dart';
import 'package:nabi/ui/views/on_boarding/splash/splash_view.dart';
import 'package:nabi/ui/views/on_boarding/onboarding_slides/onboarding_slides_view.dart';
import 'package:nabi/ui/views/on_boarding/register/register_npi_entry_view.dart';
import 'package:nabi/ui/views/on_boarding/register/register_npi_loading_view.dart';
import 'package:nabi/ui/views/on_boarding/register/register_npi_result_view.dart';
import 'package:nabi/ui/views/on_boarding/register/register_otp_view.dart';
import 'package:nabi/ui/views/on_boarding/register/register_terms_view.dart';
import 'package:nabi/ui/views/on_boarding/register/register_pin_view.dart';
import 'package:nabi/ui/views/on_boarding/register/register_final_success_view.dart';
import 'package:nabi/ui/components/widget/app_toast.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView, initial: true),
    MaterialRoute(page: SplashView),
    MaterialRoute(page: OnboardingSlidesView),
    MaterialRoute(page: RegisterNpiEntryView),
    MaterialRoute(page: RegisterNpiLoadingView),
    MaterialRoute(page: RegisterNpiResultView),
    MaterialRoute(page: RegisterOtpView),
    MaterialRoute(page: RegisterTermsView),
    MaterialRoute(page: RegisterPinView),
    MaterialRoute(page: RegisterFinalSuccessView),
    // @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AppErrorMessage),
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
