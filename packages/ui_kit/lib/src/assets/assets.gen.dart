/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/OleoScript-Regular.ttf
  String get oleoScriptRegular => 'packages/ui_kit/assets/fonts/OleoScript-Regular.ttf';

  /// File path: assets/fonts/Pacifico-Regular.ttf
  String get pacificoRegular => 'packages/ui_kit/assets/fonts/Pacifico-Regular.ttf';

  /// File path: assets/fonts/WorkSans-Italic-VariableFont_wght.ttf
  String get workSansItalicVariableFontWght =>
      'packages/ui_kit/assets/fonts/WorkSans-Italic-VariableFont_wght.ttf';

  /// File path: assets/fonts/WorkSans-VariableFont_wght.ttf
  String get workSansVariableFontWght =>
      'packages/ui_kit/assets/fonts/WorkSans-VariableFont_wght.ttf';

  /// List of all assets
  List<String> get values => [
        oleoScriptRegular,
        pacificoRegular,
        workSansItalicVariableFontWght,
        workSansVariableFontWght
      ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/book.png
  AssetGenImage get book => const AssetGenImage('assets/icons/book.png');

  /// File path: assets/icons/books.svg
  SvgGenImage get books => const SvgGenImage('assets/icons/books.svg');

  /// File path: assets/icons/coin.svg
  SvgGenImage get coin => const SvgGenImage('assets/icons/coin.svg');

  /// File path: assets/icons/exit.svg
  SvgGenImage get exit => const SvgGenImage('assets/icons/exit.svg');

  /// File path: assets/icons/ic_apple_white.svg
  SvgGenImage get icAppleWhite => const SvgGenImage('assets/icons/ic_apple_white.svg');

  /// File path: assets/icons/ic_arrow_back.svg
  SvgGenImage get icArrowBack => const SvgGenImage('assets/icons/ic_arrow_back.svg');

  /// File path: assets/icons/ic_arrow_go.png
  AssetGenImage get icArrowGo => const AssetGenImage('assets/icons/ic_arrow_go.png');

  /// File path: assets/icons/ic_arrow_next_green.svg
  SvgGenImage get icArrowNextGreen => const SvgGenImage('assets/icons/ic_arrow_next_green.svg');

  /// File path: assets/icons/ic_arrow_next_red.svg
  SvgGenImage get icArrowNextRed => const SvgGenImage('assets/icons/ic_arrow_next_red.svg');

  /// File path: assets/icons/ic_close.svg
  SvgGenImage get icClose => const SvgGenImage('assets/icons/ic_close.svg');

  /// File path: assets/icons/ic_collections.svg
  SvgGenImage get icCollections => const SvgGenImage('assets/icons/ic_collections.svg');

  /// File path: assets/icons/ic_google_icon.svg
  SvgGenImage get icGoogleIcon => const SvgGenImage('assets/icons/ic_google_icon.svg');

  /// File path: assets/icons/ic_settings.svg
  SvgGenImage get icSettings => const SvgGenImage('assets/icons/ic_settings.svg');

  /// File path: assets/icons/ic_speach.svg
  SvgGenImage get icSpeach => const SvgGenImage('assets/icons/ic_speach.svg');

  /// File path: assets/icons/question_mark.svg
  SvgGenImage get questionMark => const SvgGenImage('assets/icons/question_mark.svg');

  /// File path: assets/icons/sound.svg
  SvgGenImage get sound => const SvgGenImage('assets/icons/sound.svg');

  /// File path: assets/icons/trencher.svg
  SvgGenImage get trencher => const SvgGenImage('assets/icons/trencher.svg');

  /// List of all assets
  List<dynamic> get values => [
        book,
        books,
        coin,
        exit,
        icAppleWhite,
        icArrowBack,
        icArrowGo,
        icArrowNextGreen,
        icArrowNextRed,
        icClose,
        icCollections,
        icGoogleIcon,
        icSettings,
        icSpeach,
        questionMark,
        sound,
        trencher
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/im_auth.jpg
  AssetGenImage get imAuth => const AssetGenImage('assets/images/im_auth.jpg');

  /// File path: assets/images/im_notebook-front-gradient.svg
  SvgGenImage get imNotebookFrontGradient =>
      const SvgGenImage('assets/images/im_notebook-front-gradient.svg');

  /// File path: assets/images/im_toroid.svg
  SvgGenImage get imToroid => const SvgGenImage('assets/images/im_toroid.svg');

  /// List of all assets
  List<dynamic> get values => [imAuth, imNotebookFrontGradient, imToroid];
}

class $AssetsLottieGen {
  const $AssetsLottieGen();

  /// File path: assets/lottie/confetti.json
  LottieGenImage get confetti => const LottieGenImage('assets/lottie/confetti.json');

  /// File path: assets/lottie/help.json
  LottieGenImage get help => const LottieGenImage('assets/lottie/help.json');

  /// File path: assets/lottie/robot.json
  LottieGenImage get robot => const LottieGenImage('assets/lottie/robot.json');

  /// File path: assets/lottie/success.json
  LottieGenImage get success => const LottieGenImage('assets/lottie/success.json');

  /// List of all assets
  List<LottieGenImage> get values => [confetti, help, robot, success];
}

class UiKitAssets {
  UiKitAssets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLottieGen lottie = $AssetsLottieGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package = 'ui_kit',
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package = 'ui_kit',
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/ui_kit/$_assetName';
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package = 'ui_kit',
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/ui_kit/$_assetName';
}

class LottieGenImage {
  const LottieGenImage(this._assetName);

  final String _assetName;

  LottieBuilder lottie({
    Animation<double>? controller,
    bool? animate,
    FrameRate? frameRate,
    bool? repeat,
    bool? reverse,
    LottieDelegates? delegates,
    LottieOptions? options,
    void Function(LottieComposition)? onLoaded,
    LottieImageProviderFactory? imageProviderFactory,
    Key? key,
    AssetBundle? bundle,
    Widget Function(BuildContext, Widget, LottieComposition?)? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    double? width,
    double? height,
    BoxFit? fit,
    AlignmentGeometry? alignment,
    String? package = 'ui_kit',
    bool? addRepaintBoundary,
    FilterQuality? filterQuality,
    void Function(String)? onWarning,
  }) {
    return Lottie.asset(
      _assetName,
      controller: controller,
      animate: animate,
      frameRate: frameRate,
      repeat: repeat,
      reverse: reverse,
      delegates: delegates,
      options: options,
      onLoaded: onLoaded,
      imageProviderFactory: imageProviderFactory,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      package: package,
      addRepaintBoundary: addRepaintBoundary,
      filterQuality: filterQuality,
      onWarning: onWarning,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/ui_kit/$_assetName';
}
