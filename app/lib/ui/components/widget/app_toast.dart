
import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';
import '../../../commons/app_enum.dart';

class AppErrorMessage with ListenableServiceMixin {
  //1
  AppErrorMessage() {
    //3
    listenToReactiveValues([_errorMessage]);
  }

  //1
  final ReactiveValue<bool> _isBusy = ReactiveValue<bool>(false);
  bool get isBusy => _isBusy.value;
  void setBusy(value) {
    _isBusy.value = value;
    notifyListeners();
  }

  //2
  final ReactiveValue<String> _errorMessage = ReactiveValue<String>("");
  ReactiveValue<String> get errorMessage => _errorMessage;
  void updateErrorMessage(value) {
    _errorMessage.value = value;
    notifyListeners();
  }

 /* AppErrorMessage.show(massage, {
    ToastState? toastState = ToastState.failed,
    ToastLength? toastLength = ToastLength.medium, }) {
    showModalBottomSheet(
        enableDrag: false,
        isDismissible: false,
        isScrollControlled: true,
        barrierColor: Colors.black.withValues(alpha: 0.001),
        context: appContext(),
        backgroundColor: Colors.white.withValues(alpha: 0.001),
        builder: (cxt) {
         return  _view(massage, toastState!);
        }
    );
    _dismiss(toastLength!);
  }*/

  AppErrorMessage.show(massage, {
    ToastState? toastState = ToastState.failed,
    ToastLength? toastLength = ToastLength.medium, }) {
    locator<AppErrorMessage>().updateErrorMessage(massage);
  }

}