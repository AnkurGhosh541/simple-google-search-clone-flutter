import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';

class SearchFooter extends StatelessWidget {
  const SearchFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: footerColor,
      height: 50,
      width: double.infinity,
      child: Row(
        children: [
          size.width >= 768
              ? const SizedBox(width: 200)
              : const SizedBox(width: 50),
          Text(
            "India",
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey[600],
            ),
          ),
          VerticalDivider(
            color: Colors.grey[600],
            indent: 10,
            endIndent: 10,
          ),
          const SizedBox(width: 5),
          const Icon(
            Icons.circle,
            size: 12,
            color: Colors.grey,
          ),
          const SizedBox(width: 5),
          const Text("700000, West Bengal"),
        ],
      ),
    );
  }
}
