import 'package:flutter/material.dart';

import '../../../commons/app_colors.dart';

// Widget : Carte d’adresse
class LocationCard extends StatelessWidget {
  final String title;
  final String address;
  final String subAddress;
  final String coordinates;
  final IconData icon;

  const LocationCard({
    super.key,
    required this.title,
    required this.address,
    required this.subAddress,
    required this.coordinates,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: accentColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                      fontSize: 12
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  address,
                  style: const TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                /*Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Text(
                      subAddress,
                      style: const TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      coordinates,
                      style: const TextStyle(color: Colors.black45, fontSize: 12),
                    ),
                  ],
                ),*/
              ],
            ),
          ),
        ],
      ),
    );
  }
}
// Widget : Bouton d’option
class OptionChip extends StatelessWidget {
  final String label;
  final Color color;
  final Color? contentColor;
  final IconData? icon;
  final Color? borderColor;

  const OptionChip({
    super.key,
    required this.label,
    required this.color,
    this.borderColor,
    this.icon,
    this.contentColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 9),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: borderColor != null
            ? Border.all(color: borderColor!, width: 1)
            : null,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon==null ? Container()
              : Icon(
            icon,
            color: contentColor,
            size: 16,
          ),
          icon==null ? Container()
              : const SizedBox(width: 6),
          Text( label,
            style:  TextStyle(
              color: contentColor,
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );


    Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        border: borderColor != null
            ? Border.all(color: borderColor!, width: 1)
            : null,
      ),
      child: Text(
        label,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
    );
  }
}