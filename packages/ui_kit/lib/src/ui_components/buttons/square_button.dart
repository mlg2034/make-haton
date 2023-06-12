  import 'package:flutter/material.dart';
  import 'package:ui_kit/src/theme/app_colors.dart';

  class AppOutlinedButton extends StatelessWidget {
    final VoidCallback? onPressed;
    final Widget child;
    final Color? backgroundColor;

    final double aspectRatio;
    final EdgeInsets? innerPadding;
    final double sizeFactor;

    const AppOutlinedButton.square({
      super.key,
      required this.child,
      this.onPressed,
      this.backgroundColor,
      this.innerPadding,
      this.sizeFactor = 1,
    }) : aspectRatio = 1.0;

    const AppOutlinedButton.rect({
      super.key,
      required this.child,
      this.onPressed,
      this.backgroundColor,
      required this.aspectRatio,
      this.innerPadding, //never used
      this.sizeFactor = 1, //always used
    });

    @override
    Widget build(BuildContext context) {
      return GestureDetector(
        onTap: onPressed,
        child: SizedBox(
          height: 72 * sizeFactor,
          width: 72 * sizeFactor,
          child: AspectRatio(
            aspectRatio: aspectRatio,
            child: _Decoration(
              padding: innerPadding,
              backgroundColor: backgroundColor,
              child: child,
            ),
          ),
        ),
      );
    }
  }

  class _Decoration extends StatelessWidget {
    final Widget? child;
    final Color? backgroundColor;
    final EdgeInsets? padding;
    const _Decoration({
      Key? key,
      this.child,
      this.padding,
      this.backgroundColor,
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.border),
          borderRadius: BorderRadius.circular(16),
          color: backgroundColor ?? AppColors.white,
        ),
        child: Padding(
          padding: padding ?? const EdgeInsets.symmetric(horizontal: 16.0),
          child: child,
        ),
      );
    }
  }
