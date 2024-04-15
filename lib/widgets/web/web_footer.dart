import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/widgets/footer_text.dart';

class WebFooter extends StatelessWidget {
  const WebFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: footerColor,
      height: 50,
      child: const Row(
        children: [
          SizedBox(width: 20),
          FooterText(title: "About"),
          SizedBox(width: 10),
          FooterText(title: "Advertising"),
          SizedBox(width: 10),
          FooterText(title: "Business"),
          SizedBox(width: 10),
          FooterText(title: "How Search Works"),
          Spacer(),
          FooterText(title: "Privacy"),
          SizedBox(width: 10),
          FooterText(title: "Terms"),
          SizedBox(width: 10),
          FooterText(title: "Settings"),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
