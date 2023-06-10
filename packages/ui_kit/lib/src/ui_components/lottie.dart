import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieWidget extends StatelessWidget {
  final String lottieKeyName;
  const LottieWidget({Key? key, required this.lottieKeyName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(lottieKeyName);
  }
}
