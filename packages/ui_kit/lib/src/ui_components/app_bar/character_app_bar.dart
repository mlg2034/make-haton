import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../ui_kit.dart';

class CharacterAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final String? subTitle;
  final VoidCallback? onLeadingTapExit;
  final VoidCallback? onLeadingTapHelp;
  final Widget? trailing;

  const CharacterAppBar({
    super.key,
    this.onLeadingTapExit,
    this.onLeadingTapHelp,
    this.subTitle,
    this.title,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 48, left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          onLeadingTapExit != null
              ? Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0),
                  child: GestureDetector(
                    onTap: onLeadingTapExit,
                    child: const SquareButton(
                      child: Icon(
                        Icons.arrow_back_ios_outlined,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                )
              : const Spacer(),
          Center(
            child: Text(
              title!,
              style: characterTitleTextStyle,
            ),
          ),
          onLeadingTapHelp != null
              ? Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0),
                  child: GestureDetector(
                    onTap: onLeadingTapExit,
                    child: SquareButton(
                      child: SvgPicture.asset(
                        UiKitAssets.icons.questionMark.keyName,
                      ),
                    ),
                  ),
                )
              : const Spacer(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
