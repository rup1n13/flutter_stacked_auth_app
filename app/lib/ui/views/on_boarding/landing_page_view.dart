
import 'package:flutter/material.dart';
import 'package:nabi/app/app.router.dart';
import 'package:nabi/commons/app_colors.dart';
import 'package:stacked/stacked.dart';

import '../../../commons/app_style.dart';
import '../../../commons/app_ui_helpers.dart';
import '../../../gen/assets.gen.dart';
import '../../components/widget/app_button.dart';
import 'landing_page_viewmodel.dart';

class LandingPageView extends StackedView<LandingPageViewModel> {
  const LandingPageView({super.key});

  @override
  Widget builder(BuildContext context, LandingPageViewModel viewModel, Widget? child) {
     return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF999999),
              Color(0xFFCCCCCC),
              Color(0xFFFFFFFF),
              Color(0xFFFFFFFF),
            ],
          ),
        ),
        child: Padding(
          padding: horizontalPadding(),
          child: Column(
            children: [



            ],
          ),
        ),
      ),
    );
  }

  @override
  LandingPageViewModel viewModelBuilder(BuildContext context) => LandingPageViewModel();
}