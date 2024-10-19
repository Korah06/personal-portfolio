import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  static const mobileWidthBreak = 500.0;
  static const tabletWidthBreak = 705.0;

  const ResponsiveLayout({
    super.key,
    required this.mobile,
    this.tablet,
    this.desktop,
  });

  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;

  Widget get _tablet => tablet ?? mobile;

  Widget get _desktop => desktop ?? _tablet;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    // final screenHeight = screenSize.height;

    if (screenWidth < mobileWidthBreak) {
      return mobile;
    }
    if (screenWidth < tabletWidthBreak) {
      return _tablet;
    }
    return _desktop;
  }
}
