import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/screens/search_screen.dart';

class MobileSearchHeader extends StatelessWidget {
  const MobileSearchHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        color: searchColor,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(30),
      ),
    );
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 8.0,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    size: 28,
                  ),
                ),
                const Spacer(flex: 3),
                Image.asset(
                  "assets/images/google-logo.png",
                  height: size.height * 0.04,
                ),
                const Spacer(flex: 2),
                MaterialButton(
                  onPressed: () {},
                  color: const Color(0xFF1A73EB),
                  height: 42,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  child: const Text(
                    "Sign in",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SizedBox(
                width: double.infinity,
                height: 46,
                child: TextFormField(
                  onFieldSubmitted: (value) => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          SearchScreen(query: value, start: 0),
                    ),
                  ),
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                  textAlignVertical: TextAlignVertical.top,
                  decoration: InputDecoration(
                    border: border,
                    enabledBorder: border,
                    focusedBorder: border,
                    filled: true,
                    fillColor: searchColor,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4.0,
                        horizontal: 15,
                      ),
                      child: SvgPicture.asset(
                        "assets/images/search-icon.svg",
                        colorFilter: const ColorFilter.mode(
                            searchBorder, BlendMode.srcIn),
                      ),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4.0,
                        horizontal: 15,
                      ),
                      child: SizedBox(
                        width: 64,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                              "assets/images/mic-icon.svg",
                            ),
                            SvgPicture.asset(
                              "assets/images/google-lens-icon.svg",
                              width: 24,
                              height: 24,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
