import 'package:flutter/material.dart';
import 'package:google_clone/responsive/mobile_screen_layout.dart';
import 'package:google_clone/responsive/web_screen_layout.dart';

class ResponsiveLayoutScreen extends StatelessWidget {
  final MobileScreenLayout mobileScreenLayout;
  final WebScreenLayout webScreenLayout;
  const ResponsiveLayoutScreen({
    super.key,
    required this.mobileScreenLayout,
    required this.webScreenLayout,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 768) {
          return mobileScreenLayout;
        }
        return webScreenLayout;
      },
    );
  }
}
