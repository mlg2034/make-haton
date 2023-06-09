import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localization/localization.dart';
import 'package:ui_kit/ui_kit.dart';

import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = context.locale;
    bool isIos = Platform.isIOS;

    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            child: Image.asset(
              UiKitAssets.images.imAuth.keyName,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
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
                      Colors.white.withOpacity(0.8),
                      Colors.white,
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 28, horizontal: 70),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          localization.hello,
                          style: greetingsTextStyle,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        alignment: Alignment.center,
                        child: Text(
                          localization.welcome,
                          textAlign: TextAlign.center,
                          style: welcomeToWordMentorTextStyle,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          localization.authorize,
                          textAlign: TextAlign.center,
                          style: authorizeToLearnTextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 48),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 54,
                        child: Auth_button(
                          icon: SvgPicture.asset(
                            UiKitAssets.icons.icGoogleIcon.keyName,
                          ),
                          text: localization.continueWithGoogle,
                          onPressed: () {},
                        ),
                      ),

                      Padding(padding: EdgeInsets.symmetric(vertical: 8)),

                      isIos
                          ? Container(
                              width: double.infinity,
                              height: 54,
                              child: Auth_button(
                                icon: SvgPicture.asset(
                                  UiKitAssets.icons.icAppleWhite.keyName,
                                ),
                                text: localization.continueWithApple,
                                onPressed: () {},
                              ),
                            )
                          : Padding(
                              padding: EdgeInsets.all(0),
                            ),
                      // :Padding(padding: EdgeInsets.all(0),) ,
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 48),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
