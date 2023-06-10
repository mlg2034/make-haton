import 'package:flutter/material.dart';
import 'package:ui_kit/src/theme/app_colors.dart';

class FakeButton extends StatelessWidget {
  final Widget child;
  const FakeButton({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: AppColors.secondaryInactive,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: child,
      ),
    );
  }
}
