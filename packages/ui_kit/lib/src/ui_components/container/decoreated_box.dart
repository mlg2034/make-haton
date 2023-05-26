import 'package:flutter/material.dart';
import 'package:ui_kit/src/theme/app_colors.dart';

class AppDecoratedBox extends StatelessWidget {
  final Widget iconWidget;

  const AppDecoratedBox({
    required this.iconWidget,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(12),
        color: AppColors.white,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: iconWidget,
        ),
      ),
    );
  }
}
