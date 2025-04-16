import 'dart:math';
import 'package:flutter/material.dart';

class Computed {

  final MediaQueryData _mediaQueryData;

  /// Platform: Android, iOS, Linux, Web...
  final TargetPlatform? _platform;

  /// Screen orientation
  final bool _isPortrait;
  final bool _isLandscape;

  /// Screen size
  final double _screenWidth;
  final double _screenHeight;

  /// Font sizes
  late final double _h1;
  late final double _h2;
  late final double _h3;
  late final double _h4;
  late final double _h5;
  late final double _h6;
  late final double _paragraph;
  late final double _small;
  late final double _extraSmall;

  /// Image sizes
  late final double _imageSizeExtraSmall;
  late final double _imageSizeSmall;
  late final double _imageSizeMediumSmall;
  late final double _imageSizeMedium;
  late final double _imageSizeMediumLarge;
  late final double _imageSizeLarge;
  late final double _imageSizeExtraLarge;

  /// Animation sizes
  late final double _animationSizeExtraSmall;
  late final double _animationSizeSmall;
  late final double _animationSizeMediumSmall;
  late final double _animationSizeMedium;
  late final double _animationSizeMediumLarge;
  late final double _animationSizeLarge;
  late final double _animationSizeExtraLarge;

  /// Icon sizes
  late final double _iconSizeExtraSmall;
  late final double _iconSizeSmall;
  late final double _iconSizeMediumSmall;
  late final double _iconSizeMedium;
  late final double _iconSizeMediumLarge;
  late final double _iconSizeLarge;
  late final double _iconSizeExtraLarge;

  /// Margins
  late final double _marginExtraSmall;
  late final double _marginSmall;
  late final double _marginMediumSmall;
  late final double _marginMedium;
  late final double _marginMediumLarge;
  late final double _marginLarge;
  late final double _marginExtraLarge;

  /// Paddings
  late final double _paddingExtraSmall;
  late final double _paddingSmall;
  late final double _paddingMediumSmall;
  late final double _paddingMedium;
  late final double _paddingMediumLarge;
  late final double _paddingLarge;
  late final double _paddingExtraLarge;

  /// Buttons
  late final double _buttonHeightSmall;
  late final double _buttonHeightMedium;
  late final double _buttonHeightLarge;
  late final double _buttonWidthSmall;
  late final double _buttonWidthMedium;
  late final double _buttonWidthLarge;

  /// Define constants for scaling factors
  static const fontScaleFactors = [20, 24, 28, 32, 36, 40, 50, 55, 70];
  static const imageScaleFactors = [50, 30, 15, 10, 7, 5, 2];
  static const animationScaleFactors = [30, 15, 12, 10, 7, 5, 2];
  static const iconScaleFactors = [50, 30, 20, 10, 7, 5, 2];
  static const marginScaleFactors = [50, 40, 35, 30, 20, 15, 10];
  static const paddingScaleFactors = [50, 40, 35, 30, 20, 15, 10];
  static const buttonHeightScaleFactors = [15, 12, 8];
  static const buttonWidthScaleFactors = [5, 3, 2];

  /// Calculate scaled values
  List<double> scaleByFactors(double base, List<int> factors) =>
      factors.map((f) => base / f).toList();

  /// Constructor
  Computed({required BuildContext context}):
        _mediaQueryData = MediaQuery.of(context),
        _platform = Theme.of(context).platform,
        _isPortrait = MediaQuery.of(context).orientation == Orientation.portrait,
        _isLandscape = MediaQuery.of(context).orientation == Orientation.landscape,
        _screenWidth = MediaQuery.of(context).size.width,
        _screenHeight = MediaQuery.of(context).size.height
  {

    const double scale = 1.0;
    final size = _mediaQueryData.size;
    final double screenWidth = size.width;
    final double screenHeight = size.height;
    final double screenDiagonal = sqrt(pow(screenWidth, 2) + pow(screenHeight, 2));

    // Calculate font sizes
    final fontSizes = scaleByFactors(screenDiagonal * scale, fontScaleFactors);
    _h1 = fontSizes[0];
    _h2 = fontSizes[1];
    _h3 = fontSizes[2];
    _h4 = fontSizes[3];
    _h5 = fontSizes[4];
    _h6 = fontSizes[5];
    _paragraph = fontSizes[6];
    _small = fontSizes[7];
    _extraSmall = fontSizes[8];

    // Calculate image sizes
    final imageSizes = scaleByFactors(screenDiagonal * scale, imageScaleFactors);
    _imageSizeExtraSmall = imageSizes[0];
    _imageSizeSmall = imageSizes[1];
    _imageSizeMediumSmall = imageSizes[2];
    _imageSizeMedium = imageSizes[3];
    _imageSizeMediumLarge = imageSizes[4];
    _imageSizeLarge = imageSizes[5];
    _imageSizeExtraLarge = imageSizes[6];

    // Calculate animation sizes
    final animationSizes = scaleByFactors(screenDiagonal * scale, animationScaleFactors);
    _animationSizeExtraSmall = animationSizes[0];
    _animationSizeSmall = animationSizes[1];
    _animationSizeMediumSmall = animationSizes[2];
    _animationSizeMedium = animationSizes[3];
    _animationSizeMediumLarge = animationSizes[4];
    _animationSizeLarge = animationSizes[5];
    _animationSizeExtraLarge = animationSizes[6];

    // Calculate icon sizes
    final iconSizes = scaleByFactors(screenDiagonal * scale, iconScaleFactors);
    _iconSizeExtraSmall = iconSizes[0];
    _iconSizeSmall = iconSizes[1];
    _iconSizeMediumSmall = iconSizes[2];
    _iconSizeMedium = iconSizes[3];
    _iconSizeMediumLarge = iconSizes[4];
    _iconSizeLarge = iconSizes[5];
    _iconSizeExtraLarge = iconSizes[6];

    // Calculate margins
    final margins = scaleByFactors(screenDiagonal * scale, marginScaleFactors);
    _marginExtraSmall = margins[0];
    _marginSmall = margins[1];
    _marginMediumSmall = margins[2];
    _marginMedium = margins[3];
    _marginMediumLarge = margins[4];
    _marginLarge = margins[5];
    _marginExtraLarge = margins[6];

    // Calculate paddings
    final paddings = scaleByFactors(screenDiagonal * scale, paddingScaleFactors);
    _paddingExtraSmall = paddings[0];
    _paddingSmall = paddings[1];
    _paddingMediumSmall = paddings[2];
    _paddingMedium = paddings[3];
    _paddingMediumLarge = paddings[4];
    _paddingLarge = paddings[5];
    _paddingExtraLarge = paddings[6];

    // Calculate button sizes
    final buttonHeights = scaleByFactors(screenDiagonal * scale, buttonHeightScaleFactors);
    _buttonHeightSmall = buttonHeights[0];
    _buttonHeightMedium = buttonHeights[1];
    _buttonHeightLarge = buttonHeights[2];

    final buttonWidths = scaleByFactors(screenDiagonal * scale, buttonWidthScaleFactors);
    _buttonWidthSmall = buttonWidths[0];
    _buttonWidthMedium = buttonWidths[1];
    _buttonWidthLarge = buttonWidths[2];
  }

  /// Getters
  TargetPlatform? get platform => _platform;
  bool get isPortrait => _isPortrait;
  bool get isLandscape => _isLandscape;

  double get screenWidth => _screenWidth;
  double get screenHeight => _screenHeight;

  /// Font sizes
  double get fontSizeH1 => _h1;
  double get fontSizeH2 => _h2;
  double get fontSizeH3 => _h3;
  double get fontSizeH4 => _h4;
  double get fontSizeH5 => _h5;
  double get fontSizeH6 => _h6;
  double get fontSizeParagraph => _paragraph;
  double get fontSizeSmall => _small;
  double get fontSizeExtraSmall => _extraSmall;

  /// Icon sizes
  double get imageSizeExtraSmall => _imageSizeExtraSmall;
  double get imageSizeSmall => _imageSizeSmall;
  double get imageSizeMediumSmall => _imageSizeMediumSmall;
  double get imageSizeMedium => _imageSizeMedium;
  double get imageSizeLarge => _imageSizeLarge;
  double get imageSizeMediumLarge => _imageSizeMediumLarge;
  double get imageSizeExtraLarge => _imageSizeExtraLarge;

  /// Animation sizes
  double get animationSizeExtraSmall => _animationSizeExtraSmall;
  double get animationSizeSmall => _animationSizeSmall;
  double get animationSizeMediumSmall => _animationSizeMediumSmall;
  double get animationSizeMedium => _animationSizeMedium;
  double get animationSizeMediumLarge => _animationSizeMediumLarge;
  double get animationSizeLarge => _animationSizeLarge;
  double get animationSizeExtraLarge => _animationSizeExtraLarge;

  /// Icon sizes
  double get iconSizeExtraSmall => _iconSizeExtraSmall;
  double get iconSizeSmall => _iconSizeSmall;
  double get iconSizeMediumSmall => _iconSizeMediumSmall;
  double get iconSizeMedium => _iconSizeMedium;
  double get iconSizeMediumLarge => _iconSizeMediumLarge;
  double get iconSizeLarge => _iconSizeLarge;
  double get iconSizeExtraLarge => _iconSizeExtraLarge;

  /// Margins
  double get marginExtraSmall => _marginExtraSmall;
  double get marginSmall => _marginSmall;
  double get marginMediumSmall => _marginMediumSmall;
  double get marginMedium => _marginMedium;
  double get marginMediumLarge => _marginMediumLarge;
  double get marginLarge => _marginLarge;
  double get marginExtraLarge => _marginExtraLarge;

  /// Paddings
  double get paddingExtraSmall => _paddingExtraSmall;
  double get paddingSmall => _paddingSmall;
  double get paddingMediumSmall => _paddingMediumSmall;
  double get paddingMedium => _paddingMedium;
  double get paddingMediumLarge => _paddingMediumLarge;
  double get paddingLarge => _paddingLarge;
  double get paddingExtraLarge => _paddingExtraLarge;

  /// Button sizes
  double get buttonHeightSmall => _buttonHeightSmall;
  double get buttonHeightMedium => _buttonHeightMedium;
  double get buttonHeightLarge => _buttonHeightLarge;
  double get buttonWidthSmall => _buttonWidthSmall;
  double get buttonWidthMedium => _buttonWidthMedium;
  double get buttonWidthLarge => _buttonWidthLarge;
}