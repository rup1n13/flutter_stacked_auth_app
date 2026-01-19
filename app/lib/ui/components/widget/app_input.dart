import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nabi/gen/assets.gen.dart';

import '../../../commons/app_colors.dart';
import '../../../commons/app_ui_helpers.dart';
import 'app_input_validator.dart';

class AppInput extends StatefulWidget {
  final String hintText;
  final String label;
  final TextCapitalization? textCapitalization;
  final TextEditingController controller;
  final bool showCountryCode;
  final TextInputType textInputType;
  final double height;
  final String? suffixIcon;
  final bool? validate;

  const AppInput({
    super.key,
    required this.hintText,
    required this.label,
    this.textCapitalization = TextCapitalization.none,
    required this.controller,
    this.showCountryCode = false,
    this.suffixIcon,
    this.textInputType = TextInputType.text,
    this.height = 55,
    this.validate = true,
  });

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  String selectedCountryCode = '+229';

  final Map<String, String> countryCodes = {
    '+229': 'Bénin',
    '+225': 'Côte d\'Ivoire',
    '+228': 'Togo',
    '+234': 'Nigeria',
  };

  bool showPassword = true ;
  String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return
      Container(
      padding: const EdgeInsets.only(top: 8),
      decoration: const BoxDecoration(
        color: white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextField(
              autofocus: false,
              textInputAction: TextInputAction.next,
              enableSuggestions: true,
              autocorrect: false,
              onChanged: (value) {
                setState(() {
                  errorMessage =
                     widget.validate! ? widget.textInputType == TextInputType.visiblePassword?
                      passwordValidation(value) :
                      widget.textInputType == TextInputType.emailAddress?
                      emailValidation(value):
                          defaultValidation(value): defaultValidation(value) ;
                });
              },
              obscureText: showPassword && widget.textInputType == TextInputType.visiblePassword,
              maxLength: widget.textInputType == TextInputType.multiline ? 500: null,
              maxLines: widget.textInputType == TextInputType.multiline ? 3 : 1,
              minLines: widget.textInputType == TextInputType.multiline ? 3 : null,

              controller: widget.controller,
              textCapitalization: widget.textCapitalization!,
              keyboardType: widget.textInputType,
              cursorColor: primaryColor,
              cursorErrorColor: Colors.red,
              style: const TextStyle(
                  color: primaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
              decoration: InputDecoration(
                label: Text(widget.label, style: const TextStyle(color: primaryColor),),
                contentPadding: const EdgeInsets.all(16),
                // border: InputBorder.none,
                hintText: widget.hintText,
                floatingLabelAlignment: FloatingLabelAlignment.start,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                alignLabelWithHint: true,
                focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color:  Colors.red, width: 1,)),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide( color: Colors.red, width: 1,)),
                error: errorMessage!= null?
                Text(errorMessage.toString(), style: const TextStyle(
                  color: Colors.red,
                  fontSize: 10
                ),) : null,
                hintStyle: const TextStyle(
                    color: colorGrey,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide( color: primaryColor, width: 1,)),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: primaryColor, width: 1,)),
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide( color: primaryColor, width: 1,)),
                suffixIcon: widget.textInputType == TextInputType.visiblePassword
                    ? Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                        borderRadius: BorderRadius.all(Radius.circular(w(10))),
                        onTap: () {
                          setState(() {
                            showPassword = !showPassword;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            child: widget.textInputType == TextInputType.visiblePassword
                                ? SvgPicture.asset(
                              showPassword ? Assets.svg.icEye
                                  : Assets.svg.icEyeOff,
                              fit: BoxFit.cover,
                              // color: nColorPrimary,
                              width: w(12),
                            )
                                : null,
                          ),
                        )),
                  ),
                ) : Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: w(12),
                    child: widget.suffixIcon == null
                        ?  null : SvgPicture.asset(
                      widget.suffixIcon!,
                      fit: BoxFit.cover,
                      width: w(12),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
