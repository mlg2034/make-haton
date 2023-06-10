import 'package:flutter/material.dart';
import 'package:ui_kit/src/theme/app_colors.dart';

class SquareButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final double sizeFactor;

  const SquareButton({
    super.key,
    required this.child,
    this.onPressed,
    this.sizeFactor = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        width: 50*sizeFactor,
        child: AspectRatio(
          aspectRatio: 1.0,
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.border),
              borderRadius: BorderRadius.circular(12),
              color: AppColors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
