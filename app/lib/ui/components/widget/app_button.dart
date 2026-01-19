
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nabi/app/app.locator.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';
import '../../../commons/app_colors.dart';
import '../../../commons/app_ui_helpers.dart';
import 'app_toast.dart';

class AppButton extends StatelessWidget {
  final Function() onTap;
  final bool load;

  ///button container style
  double? width;
  final double? marginTop;
  final double? height;
  final double paddingH;
  final double paddingV;
  final Color colorBg;
  final double borderRadius;
  final Color borderColor;

  ///button icon
  final String iconLeft;
  final double iconPadding;

  final double borderWidth;
  final Widget? infoWidget;

  /// button label
  final String title;
  final TextStyle titleStyle;

  AppButton.text({
    super.key,
    required this.onTap,
    this.marginTop,
    this.width,
    this.height,
    this.paddingH = 0,
    this.paddingV = 14,
    required this.colorBg,
    this.borderRadius = 5,
    this.borderWidth = 1.2,
    this.borderColor = Colors.transparent,
    this.iconPadding = 0,
    this.iconLeft = "",
    this.infoWidget,
    required this.title,
    required this.titleStyle,
    required this.load,
  }) : isTextButton = true;

  final bool isTextButton;

  AppButton({
    super.key,
    required this.onTap,
    this.marginTop,
    this.width = 250,
    this.height = 50,
    this.paddingH = 0,
    this.paddingV = 0,
    this.infoWidget,
    this.colorBg = primaryColor,
    this.borderRadius = 100,
    this.borderWidth = 1.2,
    this.borderColor = Colors.transparent,
    this.iconPadding = 10,
    this.iconLeft = "",
    required this.title,
    this.titleStyle = const TextStyle(
      color: Colors.white,
      fontSize: 17,
      fontWeight: FontWeight.w700,
    ),
    this.load = false,
  }) : isTextButton = false;

  @override
  Widget build(BuildContext context) {
    width = screenWidth();
    return ViewModelBuilder<ButtonViewModel>.reactive(
      onViewModelReady: (model)async{
      },
      builder: (context, viewModel, child) => Column(
        children: [
          Material(
            color: colorBg,
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
            child: InkWell(
                borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
                onTap: (){
                  if(viewModel.appErrorMessage.isBusy) {
                   return;
                  }
                  viewModel.appErrorMessage.updateErrorMessage("");
                  onTap();
                },
                child: Container(
                  width: width,
                  height: height,
                  decoration: BoxDecoration(
                    border: Border.all(color: borderColor, width: borderWidth),
                    borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
                  ),
                  padding:
                  EdgeInsets.symmetric(vertical: paddingV, horizontal: paddingH),
                  child: //load
    viewModel.appErrorMessage.isBusy
                      ? const Center(
                    child: SizedBox(
                      height: 17,
                      width: 17,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.white,
                      ),
                    ),
                  )
                      : isTextButton
                      ? Text(title, style: titleStyle)
                      : title==""?Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          iconLeft,
                          width: iconLeft == "" ? 0 : 24,
                        ),
                      ]) :Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          iconLeft,
                          width: iconLeft == "" ? 0 : 24,
                        ),
                        hSpace(iconLeft == "" ? 0 : iconPadding),
                        Text(title, style: titleStyle),
                      ]),
                )),
          ),
        ],
      ),
      viewModelBuilder: () => ButtonViewModel(),
    );
  }
}


class ButtonViewModel extends ReactiveViewModel {
  final appErrorMessage = locator<AppErrorMessage>();

  @override
  List<ListenableServiceMixin> get listenableServices => [appErrorMessage];
}