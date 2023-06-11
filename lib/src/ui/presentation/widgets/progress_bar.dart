import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center,
      children: [
        _DecorationBox(),
        _DecorationBox(
          active: true,
          fill: 0.3,
        ),
      ],
    );
  }
}

class _DecorationBox extends StatelessWidget {
  final bool active;
  final double fill;
  const _DecorationBox({Key? key, this.active = false, this.fill = 1.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fill = (this.fill * 100).toInt();

    return Row(
      children: [
        Expanded(
          flex: fill,
          child: Container(
            height: 35,
            decoration: BoxDecoration(
              color: active ? AppColors.active : AppColors.secondaryInactive,
              borderRadius: const BorderRadius.all(Radius.circular(32.0)),
            ),
          ),
        ),
        Spacer(
          flex: 101 - fill,
        ),
      ],
    );
  }
}
