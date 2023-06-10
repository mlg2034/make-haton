import 'package:flutter/material.dart';
import 'package:ui_kit/src/theme/app_colors.dart';

class AppOutlinedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final double aspectRatio;
  final EdgeInsets? innerPadding;

  const AppOutlinedButton.square({
    super.key,
    required this.child,
    this.onPressed,
    this.innerPadding,
  }) : aspectRatio = 1.0;

  const AppOutlinedButton.rect({
    super.key,
    required this.child,
    this.onPressed,
    required this.aspectRatio,
    this.innerPadding, //never used
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        child: AspectRatio(
          aspectRatio: aspectRatio,
          child: _Decoration(
            padding: innerPadding,
            child: child,
          ),
        ),
      ),
    );
  }
}

class _Decoration extends StatelessWidget {
  final Widget? child;
  final EdgeInsets? padding;
  const _Decoration({
    Key? key,
    this.child,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(12),
        color: AppColors.white,
      ),
      child: Padding(
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 16.0),
        child: child,
      ),
    );
  }
}
