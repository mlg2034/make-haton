import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../ui_kit.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final VoidCallback? onLeadingTapHelp;
  final VoidCallback? onLeadingTapExit;
  final Widget? trailing;
  const BaseAppBar({
    this.onLeadingTapExit,
    this.trailing,
    this.onLeadingTapHelp,
    this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final title = this.title;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppOutlinedButton.square(
          onPressed: onLeadingTapExit,
          child: Container(
            alignment: Alignment.center,
            height: 16,
            width: 16,
            child: SvgPicture.asset(UiKitAssets.icons.exit.keyName),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (title != null)
                Text(
                  title,
                  style: learnTitleTextStyle,
                ),
              Container(
                height: 10,
                width: 178,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(48),
                  color: AppColors.secondaryInactive,
                ),
              ),
            ],
          ),
        ),
        AppOutlinedButton.square(
          onPressed: onLeadingTapHelp,
          child: Container(
            alignment: Alignment.center,
            height: 16,
            width: 16,
            child: SvgPicture.asset(
              UiKitAssets.icons.questionMark.keyName,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
