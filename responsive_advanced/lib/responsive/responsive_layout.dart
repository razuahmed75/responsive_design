import 'package:flutter/material.dart';
import 'package:flutter_application_1/responsive/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;
  const ResponsiveLayout({
    super.key,
    required this.mobileScaffold,
    required this.tabletScaffold,
    required this.desktopScaffold,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < mobileWidth) {
        return mobileScaffold;
      } else if (constraints.maxWidth < tabletWidth) {
        return tabletScaffold;
      } else {
        return desktopScaffold;
      }
    });
  }
}
