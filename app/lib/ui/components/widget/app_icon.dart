
import 'package:flutter/material.dart';
class AppIcon extends StatelessWidget {

  final double? size;
  const AppIcon({ super.key, this.size});

  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.abc);
     /// SvgPicture.asset( Assets.svg.icLogo, width: size,);
  }
}
