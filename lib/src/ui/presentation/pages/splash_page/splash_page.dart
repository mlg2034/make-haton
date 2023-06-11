import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final Widget body = SvgPicture.asset(
    'packages/ui_kit/assets/robots/robot.svg',
  );

  final Widget glow = SvgPicture.asset(
    'packages/ui_kit/assets/robots/robot_glowing.svg',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Stack(
            children: [body, glow],
            alignment: Alignment.center,
          ),
        ]),
      ),
    );
  }
}
