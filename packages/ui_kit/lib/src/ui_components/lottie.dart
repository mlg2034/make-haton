import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieWidget extends StatelessWidget {
  final String asset;
  const LottieWidget({Key? key, required this.asset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(asset);
  }
}
