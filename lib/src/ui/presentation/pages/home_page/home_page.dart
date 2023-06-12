import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localization/localization.dart';
import 'package:make_haton/features/auth/domain/entities/user_entity.dart';
import 'package:make_haton/features/auth/ui/bloc/auth_bloc.dart';
import 'package:make_haton/shared/di.dart';
import 'package:make_haton/shared/routes.dart';
import 'package:make_haton/src/ui/blocs/navigator_bloc/navigation_service.dart';
import 'package:make_haton/src/ui/presentation/pages/settings_page/settings_page.dart';
import 'package:make_haton/src/ui/presentation/widgets/progress_bar.dart';

import 'package:ui_kit/ui_kit.dart';

const _kAspectRatio = 158 / 123;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget? robot;

  // sy(UserEntity user)async{

  Future<void> customizeRobot() async {
    final res =
        await getIt.get<NavigatorManager>().pushNamed(Routes.characterPage, arguments: robot);

    if (res != null) {
      robot = res as Widget;

      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final l = context.locale;
    final state = context.read<AuthBloc>().state;
    final user = state
        .map(
          authorized: (user) => user,
          unauthorized: (user) => user,
          loading: (user) => user,
          error: (user) => user,
        )
        .userEntity;

    final navigator = getIt.get<NavigatorManager>();

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Text(l.welcomeText),
                      Text(user.name.replaceAll(RegExp("@.*"), '')),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: FakeButton(
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
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Divider(),
            GestureDetector(
              onTap: () => customizeRobot(),
              child: robot ?? SvgPicture.asset(UiKitAssets.images.icRobot.keyName),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48.0, vertical: 16),
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
                      onPressed: ()=>navigator.pushNamed(Routes.learnPage),
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
                      onPressed: ()=>navigator.pushNamed(Routes.practicePage),
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
