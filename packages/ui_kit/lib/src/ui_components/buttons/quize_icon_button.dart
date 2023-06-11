import 'package:flutter/material.dart';
import 'package:ui_kit/src/theme/app_colors.dart';

class QuizeIconButton extends StatefulWidget {
  final Widget widgetTools;
  const QuizeIconButton({Key? key, required this.widgetTools}) : super(key: key);

  @override
  State<QuizeIconButton> createState() => _QuizeIconButtonState();
}

class _QuizeIconButtonState extends State<QuizeIconButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          isPressed = false;
        });
      },
      onTapCancel: () {
        setState(() {
          isPressed = false;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 126,
          height: 126,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(
              color: isPressed ? AppColors.learnButtonColor : AppColors.border,
              width: isPressed ? 3.0 : 1.0,
            ),
            borderRadius: BorderRadius.circular(24),
          ),
          child: widget.widgetTools,
        ),
      ),
    );
  }
}
