import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localization/localization.dart';
import 'package:make_haton/src/ui/presentation/pages/settings_page/settings_page.dart';
import 'package:make_haton/src/ui/presentation/widgets/progress_bar.dart';

import 'package:ui_kit/ui_kit.dart';

const _kAspectRatio = 158 / 123;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l = context.locale;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Row(
            children: [
              Column(
                children: [
                  Text(l.welcomeText),
                  const Text('User'),
                ],
              ),
              const Spacer(),
              FakeButton(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          UiKitAssets.icons.coin.keyName,
                        ),
                        const Text('200'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // trailing: AppOutlinedButton.square(
        //   onPressed: () => Navigator.of(context)
        //       .push(MaterialPageRoute(builder: (context) => const SettingsPage())),
        //   child: SvgPicture.asset(
        //     UiKitAssets.icons.icSettings.keyName,
        //   ),
        // ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Divider(),
            const Spacer(),
            SvgPicture.asset(
              UiKitAssets.images.imNotebookFrontGradient.keyName,
            ),
            // LottieWidget(lottieKeyName: UiKitAssets.lottie.robot.keyName),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48.0, vertical: 24),
              child: Row(
                children: [
                  Expanded(
                    child: AppOutlinedButton.rect(
                      aspectRatio: 158 / 64,
                      child: Center(
                        child: SvgPicture.asset(
                          UiKitAssets.icons.icCollections.keyName,
                          width: 25,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: AppOutlinedButton.rect(
                      onPressed: () => Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => const SettingsPage())),
                      aspectRatio: 158 / 64,
                      child: Center(
                        child: SvgPicture.asset(
                          UiKitAssets.icons.icSettings.keyName,
                          width: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 48.0),
              child: ProgressBar(),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              l.wordsLearnedTitle(15),
              style: button,
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: AppOutlinedButton.rect(
                      innerPadding: const EdgeInsets.symmetric(horizontal: 32.0),
                      aspectRatio: _kAspectRatio,
                      child: SvgPicture.asset(
                        UiKitAssets.icons.trencher.keyName,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: AppOutlinedButton.rect(
                      innerPadding: const EdgeInsets.symmetric(horizontal: 32.0),
                      aspectRatio: _kAspectRatio,
                      child: SvgPicture.asset(
                        UiKitAssets.icons.books.keyName,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}
