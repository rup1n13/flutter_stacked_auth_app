
import 'package:flutter/material.dart';
import 'package:nabi/commons/app_colors.dart';

class AppMapMarker extends StatelessWidget {
  final String label;
  final bool selected;
  final IconData icon;

  const AppMapMarker({
    super.key,
    required this.label,
    this.selected = false,
    this.icon = Icons.location_on,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
          decoration: BoxDecoration(
            color: selected ? primaryColor : backgroundColor,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: selected ? backgroundColor : primaryColor, width: 0.8),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.20),
                blurRadius: 2,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 8,
              fontWeight: FontWeight.bold,
              color: selected ? backgroundColor : primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}