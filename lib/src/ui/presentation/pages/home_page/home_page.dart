import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localization/localization.dart';
import 'package:make_haton/features/auth/ui/bloc/auth_bloc.dart';
import 'package:make_haton/shared/di.dart';
import 'package:make_haton/shared/routes.dart';
import 'package:make_haton/src/ui/blocs/navigator_bloc/navigation_service.dart';
import 'package:make_haton/src/ui/presentation/pages/settings_page/settings_page.dart';
import 'package:make_haton/src/ui/presentation/widgets/progress_bar.dart';

import 'package:ui_kit/ui_kit.dart';

const _kAspectRatio = 158 / 123;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l = context.locale;
    final state = context.read<AuthBloc>().state;
    final user = state.map(
      authorized: (user) => user,
      unauthorized: (user) => user,
      loading: (user) => user,
      error: (user) => user,
    ).userEntity;

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
                  Text(user.name),
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
                        Text('${user.coins}'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Divider(),
            const Spacer(),
            GestureDetector(
              onTap: () {
                getIt.get<NavigatorManager>().pushNamed(Routes.characterPage);
              },
              child: SvgPicture.asset(UiKitAssets.images.icRobot.keyName),
            ),
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
              l.wordsLearnedTitle(user.practicedWords),
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
