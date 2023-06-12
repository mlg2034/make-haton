import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../ui_kit.dart';

class SoundButton extends StatelessWidget {
  const SoundButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 76,
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.primary,
        ),
        child: Container(
          alignment: Alignment.center,
          width: 20,
          height: 18,
          child: SvgPicture.asset(
            UiKitAssets.icons.sound.keyName,
          ),
        ),
      ),
    );
  }
}
