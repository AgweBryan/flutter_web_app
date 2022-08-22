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

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < smallScreenSize;

  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= mediumScreenSize &&
      MediaQuery.of(context).size.width < largeScreenSize;

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= largeScreenSize;

  static bool isCustumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= mediumScreenSize &&
      MediaQuery.of(context).size.width <= customScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double width = constraints.maxWidth;
        if (isLargeScreen(context)) {
          return largeScreen;
        } else if (isMediumScreen(context)) {
          return mediumScreen ?? largeScreen;
        } else if (isCustumScreen(context)) {
          return customScreen ?? largeScreen;
        } else {
          return smallScreen;
        }
      },
    );
  }
}
