import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../commons/app_colors.dart';
import '../../../commons/app_ui_helpers.dart';

class AppDropdown extends StatelessWidget {
  final List<String> dropList;
  final String hintText;
  final bool icon;
  final Function(String? value) onChanged;
  final Color? bgColor;

  const AppDropdown({
    super.key,
    required this.dropList,
    this.icon = false,
    required this.hintText,
    required this.onChanged,
    this.bgColor,
  });

  _buildDropdown(context) {
    return Container(
        height: h(54),
        padding: EdgeInsets.only(top: w(0), left: w(8), right: w(14)),
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(w(6)),
            border: Border.all(
                color: /*onFocus ? nColorSecondary : */ primaryColor,
                width: w(1))),
        child: DropdownButton<String>(
          icon: const Icon(
            Icons.keyboard_arrow_down,
          ),
          iconSize: s(30),
          iconDisabledColor: Colors.black,
          iconEnabledColor: Colors.black,
          hint: Row(
            children: [
              if (icon) hSpace(5),
              if (icon)
                SvgPicture.asset(
                  hintText.split(' ').last,
                  height: w(14),
                  width: w(20),
                ),
              if (icon) hSpace(10),
              Expanded(
                child: Text(
                  icon
                      ? hintText
                      .split(' ')[0]
                      .replaceAll("Côte", "Côte d'Ivoire")
                      : hintText,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: s(14) >= 14 ? s(14) : 16, color: black),
                ),
              ),
            ],
          ),
          elevation: 16,
          underline: const SizedBox(),
          onChanged: onChanged,
          isExpanded: true,
          items: dropList.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Row(
                children: [
                  if (icon) hSpace(5),
                  if (icon)
                    SvgPicture.asset(
                      value.split(' ').last,
                      height: w(14),
                      width: w(20),
                    ),
                  if (icon) hSpace(10),
                  Text(
                    icon
                        ? value
                        .split(' ')[0]
                        .replaceAll("Côte", "Côte d'Ivoire")
                        : value,
                    style: TextStyle(
                      fontSize: s(14),
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return _buildDropdown(context);
  }
}
