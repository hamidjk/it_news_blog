/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Hashtag.png
  AssetGenImage get hashtag => const AssetGenImage('assets/icons/Hashtag.png');

  /// File path: assets/icons/arrOw.png
  AssetGenImage get arrOw => const AssetGenImage('assets/icons/arrOw.png');

  /// File path: assets/icons/biguser.png
  AssetGenImage get biguser => const AssetGenImage('assets/icons/biguser.png');

  /// File path: assets/icons/home.png
  AssetGenImage get home => const AssetGenImage('assets/icons/home.png');

  /// File path: assets/icons/medad.png
  AssetGenImage get medad => const AssetGenImage('assets/icons/medad.png');

  /// File path: assets/icons/micro.png
  AssetGenImage get micro => const AssetGenImage('assets/icons/micro.png');

  /// File path: assets/icons/par.png
  AssetGenImage get par => const AssetGenImage('assets/icons/par.png');

  /// File path: assets/icons/user.png
  AssetGenImage get user => const AssetGenImage('assets/icons/user.png');

  /// File path: assets/icons/w.svg
  String get w => 'assets/icons/w.svg';

  /// List of all assets
  List<dynamic> get values =>
      [hashtag, arrOw, biguser, home, medad, micro, par, user, w];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Hashtag.png
  AssetGenImage get hashtag => const AssetGenImage('assets/images/Hashtag.png');

  /// File path: assets/images/biguser.png
  AssetGenImage get biguser => const AssetGenImage('assets/images/biguser.png');

  /// File path: assets/images/itslogo.png
  AssetGenImage get itslogo => const AssetGenImage('assets/images/itslogo.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/p1.jpg
  AssetGenImage get p1 => const AssetGenImage('assets/images/p1.jpg');

  /// File path: assets/images/p2.jpg
  AssetGenImage get p2 => const AssetGenImage('assets/images/p2.jpg');

  /// File path: assets/images/p3.jpg
  AssetGenImage get p3 => const AssetGenImage('assets/images/p3.jpg');

  /// File path: assets/images/p4.jpg
  AssetGenImage get p4 => const AssetGenImage('assets/images/p4.jpg');

  /// File path: assets/images/p5.jpg
  AssetGenImage get p5 => const AssetGenImage('assets/images/p5.jpg');

  /// File path: assets/images/poster.jpg
  AssetGenImage get poster => const AssetGenImage('assets/images/poster.jpg');

  /// File path: assets/images/splashit.png
  AssetGenImage get splashit =>
      const AssetGenImage('assets/images/splashit.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [hashtag, biguser, itslogo, logo, p1, p2, p3, p4, p5, poster, splashit];
}

class Assets {
  Assets._();

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
    String? package,
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

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
