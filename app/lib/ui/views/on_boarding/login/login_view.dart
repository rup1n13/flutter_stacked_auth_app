
import 'package:double_back_to_close/double_back_to_close.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nabi/app/app.router.dart';
import 'package:nabi/commons/app_colors.dart';
import 'package:nabi/ui/views/on_boarding/login/login_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../../commons/app_style.dart';
import '../../../../../commons/app_ui_helpers.dart';
import '../../../../domain/local/local_storage.dart';
import '../../../components/widget/app_button.dart';
import '../../../components/widget/app_icon.dart';
import '../../../components/widget/app_input.dart';
import '../../../components/widget/app_phone_input.dart';


class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return DoubleBack(
        message: "Appuyez une seconde fois pour quitter",
        child: ViewModelBuilder<LoginViewModel>.reactive(
          onViewModelReady: (model)async{
            SystemChrome
                .setSystemUIOverlayStyle(systemUiOverlayStyle);
            await LocalStorage.saveData(DBKey.isFirstRun, "false");
          },
          builder: (context, viewModel, child) => Scaffold(
            backgroundColor: Colors.white,
            body: Padding(
              padding: viewPadding(),
              child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                    ],
                  )
              ),
            ),
          ),
          disposeViewModel: true,
          viewModelBuilder: () => LoginViewModel(),
        )
    );
  }

}
