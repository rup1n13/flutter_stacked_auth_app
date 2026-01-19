import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nabi/ui/components/widget/app_icon.dart';
import 'package:stacked/stacked.dart';

import '../../commons/app_colors.dart';
import '../../commons/app_ui_helpers.dart';
import 'component_viewmodel.dart';

class ComponentView extends StackedView<ComponentViewModel> {
  const ComponentView({super.key});

  @override
  Widget builder(
    BuildContext context,
    ComponentViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const AppIcon(),
                  Text(
                    'koolika',
                    style: TextStyle(
                      color: black,
                      fontSize: s(28),
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                ],
              ),
              vSpace(smallSize),
              SvgPicture.asset(
                'assets/svg/ic_appbar_shadow.svg',
                width: screenWidth(),
                height: h(18),
                fit: BoxFit.cover,
              ),
              vSpace(smallSize),
            ],
          ),
        ),
      ),
    );
  }

  @override
  ComponentViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ComponentViewModel();
}
