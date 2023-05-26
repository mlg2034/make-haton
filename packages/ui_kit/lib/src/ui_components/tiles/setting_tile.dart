import 'package:flutter/material.dart';
import 'package:ui_kit/src/theme/app_colors.dart';
import 'package:ui_kit/src/theme/text_theme.dart';

class SettingsTile extends StatelessWidget {
  final String title;
  final ValueChanged<bool>? onChanged;
  final Widget? customActionWidget;
  final bool value;

  const SettingsTile({
    super.key,
    required this.title,
    this.onChanged,
    this.customActionWidget,
    this.value = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: dartThemeTextStyle,
          ),
          customActionWidget ??
              Switch(
                inactiveTrackColor: AppColors.white,
                activeColor: AppColors.white,
                activeTrackColor: AppColors.activeTrack,
                value: value,
                onChanged: onChanged,
              ),
        ],
      ),
    );
  }
}
