
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

import '../../../../../app/app.locator.dart';
import '../../../../commons/app_ui_helpers.dart';
import '../../../../domain/local/app_service.dart';
import '../../../components/widget/app_toast.dart';

class CodeVerificationViewmodel extends ReactiveViewModel{
  final appState = locator<AppErrorMessage>();
  final appService = locator<AppService>();

  final TextEditingController otpController = TextEditingController();

  void onResendClick(phone) async {

  }
  bool _onLoad = false;
  bool get onLoad => _onLoad;
  setOnLoad(value){
    _onLoad = value;
    notifyListeners();
  }

  bool _ended = false;
  bool get ended => _ended;
  setEnded(value){
    _ended = value;
    notifyListeners();
  }

  bool get canSubmit => otpController.text.length ==6;

  void onContinueBtnClick(phone) {
    if(!canSubmit){
      AppErrorMessage.show( l10n.vsucToast, //   "Veuillez saisir un code"
      );
      return;
    }
    _signUp(phone, otpController.text);
  }

  void _signUp(phone,otp) async {
  }

  @override
  List<ListenableServiceMixin> get listenableServices => [appService];
}
