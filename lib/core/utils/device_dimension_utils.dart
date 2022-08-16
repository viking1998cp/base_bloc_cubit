import 'dart:math';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class DeviceDimension {
  static const Size defaultSize = Size(750, 1334);
  static late DeviceDimension _instance;

  late Size uiSize = defaultSize;

  late bool allowFontScaling;

  late Orientation _orientation;

  late double _pixelRatio;
  late double _textScaleFactor;
  late double _screenWidth;
  late double _screenHeight;
  late double _statusBarHeight;
  late double _bottomBarHeight;

  factory DeviceDimension() {
    return _instance;
  }

  DeviceDimension._();

  static void init(
    BoxConstraints constraints, {
    Orientation orientation = Orientation.portrait,
    Size designSize = defaultSize,
    bool allowFontScaling = false,
  }) {
    _instance = DeviceDimension._()
      ..uiSize = designSize
      ..allowFontScaling = allowFontScaling
      .._orientation = orientation;

    if (orientation == Orientation.portrait) {
      _instance._screenWidth = constraints.maxWidth;
      _instance._screenHeight = constraints.maxHeight;
    } else {
      _instance._screenWidth = constraints.maxHeight;
      _instance._screenHeight = constraints.maxWidth;
    }

    final window = WidgetsBinding.instance?.window ?? ui.window;
    _instance._pixelRatio = window.devicePixelRatio;
    _instance._statusBarHeight = window.padding.top;
    _instance._bottomBarHeight = window.padding.bottom;
    _instance._textScaleFactor = window.textScaleFactor;
  }

  ///Get screen orientation
  Orientation get orientation => _orientation;

  /// The number of font pixels for each logical pixel.
  double get textScaleFactor => _textScaleFactor;

  /// The size of the media in logical pixels (e.g, the size of the screen).
  double get pixelRatio => _pixelRatio;

  /// The horizontal extent of this size.
  double get screenWidth => _screenWidth;

  ///The vertical extent of this size. dp
  double get screenHeight => _screenHeight;

  /// The offset from the top, in dp
  double get statusBarHeight => _statusBarHeight / _pixelRatio;

  /// The offset from the bottom, in dp
  double get bottomBarHeight => _bottomBarHeight / _pixelRatio;

  /// The ratio of actual width to UI design
  double get scaleWidth => defaultSize.width / uiSize.width;

  ///  /// The ratio of actual height to UI design
  double get scaleHeight => defaultSize.height / uiSize.height;

  double get scaleText => min(scaleWidth, scaleHeight);

  /// Adapted to the device width of the UI Design.
  /// Height can also be adapted according to this to ensure no deformation ,
  /// if you want a square
  double setWidth(num width) => width * scaleWidth;

  /// Highly adaptable to the device according to UI Design
  /// It is recommended to use this method to achieve a high degree of adaptation
  /// when it is found that one screen in the UI design
  /// does not match the current style effect, or if there is a difference in shape.
  double setHeight(num height) => height * scaleHeight;

  ///Adapt according to the smaller of width or height
  double radius(num r) => r * scaleText;

  double setSp(num fontSize, {bool? allowFontScalingSelf}) =>
      allowFontScalingSelf == null
          ? (allowFontScaling
              ? (fontSize * scaleText) * _textScaleFactor
              : (fontSize * scaleText))
          : (allowFontScalingSelf
              ? (fontSize * scaleText) * _textScaleFactor
              : (fontSize * scaleText));
}

class DeviceDimentionUtilInit extends StatelessWidget {
  /// A helper widget that initializes [ScreenUtil]
  const DeviceDimentionUtilInit({
    required this.builder,
    this.designSize = DeviceDimension.defaultSize,
    Key? key,
  }) : super(key: key);

  final Widget Function(BuildContext context) builder;

  /// The [Size] of the device in the design draft, in dp
  final Size designSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (buildContext, BoxConstraints constraints) {
      if (constraints.maxWidth != 0) {
        final Orientation orientation =
            constraints.maxWidth > constraints.maxHeight
                ? Orientation.landscape
                : Orientation.portrait;
        DeviceDimension.init(
          constraints,
          orientation: orientation,
          designSize: designSize,
        );
        return builder(buildContext);
      }
      return const SizedBox();
    });
  }
}
