import 'package:flutter/material.dart';

import '../../../ui_kit.dart';

class QuizeButtons extends StatefulWidget {
  final Widget widgetTools;

  final VoidCallback onPressed;
  const QuizeButtons({
    required this.widgetTools,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  _QuizeButtonsState createState() => _QuizeButtonsState();
}

class _QuizeButtonsState extends State<QuizeButtons> {
  bool isPressed = false;

  void onPressed() {
    setState(() {
      isPressed = !isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          decoration: BoxDecoration(
            color: isPressed?AppColors.learnButtonColor:AppColors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: isPressed? AppColors.learnButtonColor:AppColors.border),
          ),
          child: Center(
            child: widget.widgetTools,
          ),
        ),
      ),
    );
  }
}
