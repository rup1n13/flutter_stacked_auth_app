
import 'package:flutter/material.dart';

import '../../../commons/app_ui_helpers.dart';

class AppEmptyState extends StatelessWidget {

  final Function() onClick;

  const AppEmptyState({
    super.key, required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.inbox_outlined,
              size: 120,
              color: Color(0xFFCCCCCC),
            ),
          ],
        ),
        vSpace(24),
        const Text(
          "Ajouter votre premier\nitem",
          style: TextStyle(
            color: Color(0xFF363636),
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
