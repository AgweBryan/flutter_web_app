import 'package:flutter/material.dart';
import 'package:flutter_web_app/constants/breakpoints.dart';

class Responsive extends StatelessWidget {
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget smallScreen;
  final Widget? customScreen;
  const Responsive(
      {Key? key,
      this.customScreen,
      required this.largeScreen,
      this.mediumScreen,
      required this.smallScreen})
      : super(key: key);

  static bool isSmallScreen(double width) => width < smallScreenSize;

  static bool isMediumScreen(double width) =>
      width >= mediumScreenSize && width < largeScreenSize;

  static bool isLargeScreen(double width) => width >= largeScreenSize;

  static bool isCustumScreen(double width) =>
      width >= mediumScreenSize && width <= customScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double width = constraints.maxWidth;
        if (isLargeScreen(width)) {
          return largeScreen;
        } else if (isMediumScreen(width)) {
          return mediumScreen ?? largeScreen;
        } else if (isCustumScreen(width)) {
          return customScreen ?? largeScreen;
        } else {
          return smallScreen;
        }
      },
    );
  }
}
