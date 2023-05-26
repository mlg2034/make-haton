import 'package:flutter/material.dart';
import 'package:ui_kit/src/theme/app_colors.dart';

class SquareButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;

  const SquareButton({
    super.key,
    required this.child,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        width: 50,
        child: AspectRatio(
          aspectRatio: 1.0,
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.border),
              borderRadius: BorderRadius.circular(12),
              color: AppColors.white,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
