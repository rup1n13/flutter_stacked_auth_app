// This is AA Text field
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:nabi/ui/components/widget/app_input_validator.dart';
import 'package:stacked/stacked.dart';

import '../../../commons/app_colors.dart';
// import '../../../domain/repos/auth_repository.dart';


// ignore: must_be_immutable
class AppPhoneInput extends StatefulWidget {
  String hintText;
  TextEditingController? controller;
  bool withStroke;
  bool withBg;
  Color borderColor;
  bool defaultCountry;
  final Function(bool) onInputValidated;
  String? Function(PhoneNumber) onSaved;
  AppPhoneInput({
    super.key,
    required this.onInputValidated,
    required this.onSaved,
    this.withStroke = true,
    this.defaultCountry = false,
    this.borderColor = colorUnFocus,
    this.withBg = true,
    required this.hintText,
    this.controller,
  });

  @override
  AppPhoneInputState createState() => AppPhoneInputState();
}

class AppPhoneInputState extends State<AppPhoneInput> {
  final _focusNode = FocusNode();

  bool onFocus = false;
  String? errorMessage;
  Color _borderColor = Colors.transparent;

  @override
  void initState() {
    super.initState();
    _focusNode.unfocus();
    debugPrint("Has focus:");
    if (_borderColor == Colors.transparent) {
      setState(() {
        _borderColor = widget.borderColor;
      });
    }
    _focusNode.addListener(() {
      debugPrint("Has focus: ${_focusNode.hasFocus}");
      if (_focusNode.hasFocus) {
        setState(() {
          onFocus = true;
          //widget.borderColor = nColorPrimary;
        });
      } else {
        setState(() {
          onFocus = false;
          //widget.borderColor = _borderColor!=nColorNull?_borderColor:nColorShapeBorder3;
        });
      }
    });
  }


  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  _buildTextField(context, PhoneInputViewModel model) {
    return Container(
      height: errorMessage==null ? 55:75,
      //padding: EdgeInsets.only(top: w(0), left: w(10), right: w(14)),
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
       // border: Border.all(color: primaryColor),
        //borderRadius: BorderRadius.circular(8),
      ),
      child: InternationalPhoneNumberInput(
        onInputChanged: (value) {
          setState(() {
            errorMessage = phoneNumberValidation(value);
          });
          widget.onSaved(value);
        },
        autoFocus: false,
        textStyle: const TextStyle(
          color: primaryColor,
          fontSize: 18,
          fontWeight: FontWeight.w400),
        onInputValidated: widget.onInputValidated,
        spaceBetweenSelectorAndTextField: 0,
        selectorConfig: const SelectorConfig(
          selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
          useBottomSheetSafeArea: true,
        ),
        ignoreBlank: false,
        selectorTextStyle: const TextStyle(color: Colors.black),
        initialValue: model.number,
        textFieldController: widget.controller,
        formatInput: true,
        hintText: widget.hintText,
        keyboardAction: TextInputAction.next,
        keyboardType:
        const TextInputType.numberWithOptions(signed: true, decimal: true),
        inputBorder: InputBorder.none,
        onSaved:widget.onSaved,
        errorMessage: errorMessage,
          cursorColor: primaryColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PhoneInputViewModel>.reactive(
      onViewModelReady: (model) => model.init(),
      builder: (context, model, child) => _buildTextField(context, model),
      disposeViewModel: false,
      viewModelBuilder: () => PhoneInputViewModel(),
    );
  }
}

class PhoneInputViewModel extends BaseViewModel {

  PhoneNumber number = PhoneNumber(isoCode: 'BJ');

  Future<bool> init() async  { 
    // await AuthRepository.getIpInfo((ipInfo) {
    //   number = PhoneNumber(isoCode:
    //   ipInfo.countryCode.toString().toUpperCase());
    //   rebuildUi();
    // }, (error) {});
    
    return true;
  }

}
