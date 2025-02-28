import 'package:flutter/material.dart';

class ResponsiveUtil {
  static const double baseWidth = 428; // iPhone 12 Pro Max width
  static const double baseHeight = 926; // iPhone 12 Pro Max height

  static double _deviceWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
  static double _deviceHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static double _scaleFactor(BuildContext context) {
    double deviceWidth = _deviceWidth(context);
    double deviceHeight = _deviceHeight(context);
    double baseMinDimension = baseWidth < baseHeight ? baseWidth : baseHeight;
    double deviceMinDimension =
        deviceWidth < deviceHeight ? deviceWidth : deviceHeight;
    return deviceMinDimension / baseMinDimension;
  }

  static double resizeFont(BuildContext context, double fontSize) {
    return fontSize * _scaleFactor(context);
  }

  static double resizeHeightOrWidth(BuildContext context, double size) {
    return size * _scaleFactor(context);
  }
}
