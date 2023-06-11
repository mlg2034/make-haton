import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_kit/ui_kit.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with TickerProviderStateMixin {
  final Widget body = SvgPicture.asset(
    UiKitAssets.robots.robot.keyName,
    height: 300,
  );

  final Widget glow = SvgPicture.asset(
    UiKitAssets.robots.robotGlowing.keyName,
    height: 300,
  );

  late AnimationController animationController;
  late AnimationController animationControllerSize;

  @override
  void initState() {
    super.initState();

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarContrastEnforced: false,
        systemNavigationBarDividerColor: Colors.transparent,
      ));

    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    animationControllerSize =
        AnimationController(vsync: this, duration: const Duration(seconds: 3), lowerBound: 0.7, upperBound: 1.0);
    animationController.forward();
    animationControllerSize.forward();
  }

  @override
  void dispose() {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Spacer(),
          const SizedBox(
            height: 128,
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: ScaleTransition(
                scale: animationControllerSize
                    .drive(CurveTween(curve: Curves.easeOut)),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    body,
                    FadeTransition(
                      opacity: animationController
                          .drive(CurveTween(curve: Curves.easeOut)),
                      child: glow,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Column(
            children: [
              Text(
                "word".toUpperCase(),
                style: splash1,
              ),
              Text(
                "mentor".toUpperCase(),
                style: splash2,
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
