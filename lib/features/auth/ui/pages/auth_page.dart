import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localization/localization.dart';
import 'package:make_haton/features/auth/ui/bloc/auth_bloc.dart';
import 'package:ui_kit/ui_kit.dart';

import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  AuthPageState createState() => AuthPageState();
}

class AuthPageState extends State<AuthPage> {

  @override
  Widget build(BuildContext context) {
    final localization = context.locale;
    bool isIos = Platform.isIOS;

    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Image.asset(
            UiKitAssets.images.imAuth.keyName,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          FractionallySizedBox(
            heightFactor: isIos ? 0.55 : 0.48,
            child: ClipPath(
              clipper: WaveClipperTwo(reverse: true),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.white.withOpacity(0.8),
                      AppColors.white,
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  localization.hello,
                  style: titleScript,
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 4)),
                Text(
                  localization.welcome,
                  textAlign: TextAlign.center,
                  style: body,
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 4)),
                Text(
                  localization.authorize,
                  textAlign: TextAlign.center,
                  style: header_3,
                ),

                const Padding(padding: EdgeInsets.symmetric(vertical: 16)),
                SizedBox(
                  width: double.infinity,
                  height: 54,
                  child: AuthButton(
                    icon: SvgPicture.asset(
                      UiKitAssets.icons.icGoogleIcon.keyName,
                    ),
                    text: localization.continueWithGoogle,
                    onPressed: () => context.read<AuthBloc>().add(const AuthEvent.signIn()),
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
                  SizedBox(
                    width: double.infinity,
                    height: 54,
                    child: AuthButton(
                      onPressed: (){
                        print('login with email');
                      },
                      icon: SvgPicture.asset(
                        UiKitAssets.icons.icAppleWhite.keyName,
                      ),
                      text: localization.continueWithApple,
                    ),
                  ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
