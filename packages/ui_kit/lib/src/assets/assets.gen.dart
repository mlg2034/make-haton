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

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/WorkSans-Italic-VariableFont_wght.ttf
  String get workSansItalicVariableFontWght =>
      'packages/ui_kit/assets/fonts/WorkSans-Italic-VariableFont_wght.ttf';

  /// File path: assets/fonts/WorkSans-VariableFont_wght.ttf
  String get workSansVariableFontWght =>
      'packages/ui_kit/assets/fonts/WorkSans-VariableFont_wght.ttf';

  /// List of all assets
  List<String> get values => [workSansItalicVariableFontWght, workSansVariableFontWght];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic_arrow_back.svg
  SvgGenImage get icArrowBack => const SvgGenImage('assets/icons/ic_arrow_back.svg');

  /// File path: assets/icons/ic_arrow_next_green.svg
  SvgGenImage get icArrowNextGreen => const SvgGenImage('assets/icons/ic_arrow_next_green.svg');

  /// File path: assets/icons/ic_arrow_next_red.svg
  SvgGenImage get icArrowNextRed => const SvgGenImage('assets/icons/ic_arrow_next_red.svg');

  /// File path: assets/icons/ic_close.svg
  SvgGenImage get icClose => const SvgGenImage('assets/icons/ic_close.svg');

  /// File path: assets/icons/ic_collections.svg
  SvgGenImage get icCollections => const SvgGenImage('assets/icons/ic_collections.svg');

  /// File path: assets/icons/ic_settings.svg
  SvgGenImage get icSettings => const SvgGenImage('assets/icons/ic_settings.svg');

  /// File path: assets/icons/ic_speach.svg
  SvgGenImage get icSpeach => const SvgGenImage('assets/icons/ic_speach.svg');

  /// List of all assets
  List<SvgGenImage> get values =>
      [icArrowBack, icArrowNextGreen, icArrowNextRed, icClose, icCollections, icSettings, icSpeach];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/ic_arrow_back.svg
  SvgGenImage get icArrowBack => const SvgGenImage('assets/images/ic_arrow_back.svg');

  /// File path: assets/images/ic_cancel.svg
  SvgGenImage get icCancel => const SvgGenImage('assets/images/ic_cancel.svg');

  /// File path: assets/images/ic_help.svg
  SvgGenImage get icHelp => const SvgGenImage('assets/images/ic_help.svg');

  /// File path: assets/images/ic_settings.svg
  SvgGenImage get icSettings => const SvgGenImage('assets/images/ic_settings.svg');

  /// File path: assets/images/im_notebook-front-gradient.svg
  SvgGenImage get imNotebookFrontGradient =>
      const SvgGenImage('assets/images/im_notebook-front-gradient.svg');

  /// File path: assets/images/im_toroid.svg
  SvgGenImage get imToroid => const SvgGenImage('assets/images/im_toroid.svg');

  /// List of all assets
  List<SvgGenImage> get values =>
      [icArrowBack, icCancel, icHelp, icSettings, imNotebookFrontGradient, imToroid];
}

class UiKitAssets {
  UiKitAssets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
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
