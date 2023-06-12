import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localization/localization.dart';
import 'package:make_haton/features/auth/ui/bloc/auth_bloc.dart';
import 'package:ui_kit/ui_kit.dart';

import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class AuthPageEmail extends StatefulWidget {
  const AuthPageEmail({Key? key}) : super(key: key);

  @override
  AuthPageEmailState createState() => AuthPageEmailState();
}

class AuthPageEmailState extends State<AuthPageEmail> {
  @override
  Widget build(BuildContext context) {
    final localization = context.locale;
    bool isIos = Platform.isIOS;
    final TextEditingController textEditingController = TextEditingController();

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
                TextField(
                  controller: textEditingController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),),
                    labelText: 'email',
                    labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.title,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 54,
                  child: AuthButton(
                    icon: Image.asset(
                      UiKitAssets.icons.email.keyName,
                    ),
                    text: 'Sign In',
                    onPressed: () {
                      final email = textEditingController.text.trim();
                      context
                          .read<AuthBloc>()
                          .add(AuthEvent.signInEmail(email));
                    },
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
                if (isIos)
                  SizedBox(
                    width: double.infinity,
                    height: 54,
                    child: AuthButton(
                      icon: SvgPicture.asset(
                        UiKitAssets.icons.icAppleWhite.keyName,
                      ),
                      text: localization.continueWithApple,
                    ),
                  ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 32),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
