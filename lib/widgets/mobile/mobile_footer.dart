import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/widgets/footer_text.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: footerColor,
      height: 100,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FooterText(title: "Dark theme: on"),
              FooterText(title: "Settings"),
              FooterText(title: "Privacy"),
              FooterText(title: "Terms"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FooterText(title: "Advertising"),
              FooterText(title: "Business"),
              FooterText(title: "About"),
            ],
          ),
        ],
      ),
    );
  }
}
