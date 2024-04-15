import 'package:flutter/material.dart';
import 'package:google_clone/widgets/language_text.dart';

class LanguageButtons extends StatelessWidget {
  final bool isWeb;
  final double spacing;
  const LanguageButtons({
    super.key,
    required this.isWeb,
    required this.spacing,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: spacing,
      runSpacing: 10,
      children: [
        isWeb ? const Text("Google offered in:") : const Text(""),
        // const SizedBox(width: 8),
        const LanguageText(title: 'हिन्दी'),
        // const SizedBox(width: 8),
        const LanguageText(title: 'বাংলা'),
        // const SizedBox(width: 8),
        const LanguageText(title: 'తెలుగు'),
        // const SizedBox(width: 8),
        const LanguageText(title: 'मराठी'),
        // const SizedBox(width: 8),
        const LanguageText(title: 'தமிழ்'),
        // const SizedBox(width: 8),
        const LanguageText(title: 'ગુજરાતી'),
        // const SizedBox(width: 8),
        const LanguageText(title: 'ಕನ್ನಡ'),
        // const SizedBox(width: 8),
        const LanguageText(title: 'മലയാളം'),
        // const SizedBox(width: 8),
        const LanguageText(title: 'ਪੰਜਾਬੀ'),
      ],
    );
  }
}
