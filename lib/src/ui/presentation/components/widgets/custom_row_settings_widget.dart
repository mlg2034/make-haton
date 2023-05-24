import 'package:flutter/material.dart';

import '../../style/colors.dart';
import '../../style/text_styles.dart';

class CustomSettingsRowWidget extends StatefulWidget {
  final String settingText;
  const CustomSettingsRowWidget({
    required this.settingText,
    super.key,
  });

  @override
  State<CustomSettingsRowWidget> createState() => _CustomSettingsRowWidgetState();
}

class _CustomSettingsRowWidgetState extends State<CustomSettingsRowWidget> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48 , vertical: 27.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.settingText , style: dartThemeTextStyle,),
          Switch(
            inactiveTrackColor: ColorsEnum.WHITE_COLOR,
              activeColor: ColorsEnum.WHITE_COLOR,
              activeTrackColor: ColorsEnum.ACTIVE_TRACK_COLOR,
              value: light,
              onChanged: (bool value) {
                setState(() {
                  light = value;
                });
              }),
        ],
      ),
    );
  }
}
