import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:localization/localization.dart';
import 'package:ui_kit/ui_kit.dart';

class NoConnection extends StatefulWidget {
  const NoConnection({Key? key}) : super(key: key);

  @override
  State<NoConnection> createState() => _NoConnectionState();
}

class _NoConnectionState extends State<NoConnection> {
  @override
  Widget build(BuildContext context) {
    final localization = context.locale;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 128),
              child: SizedBox(
                child: LottieWidget(
                  asset: UiKitAssets.lottie.noConnection.keyName,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                localization.connection_is_lost,
                style: title.copyWith(color: AppColors.red),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 140),
              child: Text(
                localization.check_your_network,
                textAlign: TextAlign.center,
                style: body.copyWith(color: AppColors.red),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                width: 332,
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(width: 1.0, color: AppColors.border),
                  color: AppColors.white,
                ),
                child: Text(
                  localization.reload,
                  style: button,
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 16)),
          ],
        ),
      ),
    );
  }
}
