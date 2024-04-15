import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/screens/search_screen.dart';

class WebSearchHeader extends StatelessWidget {
  const WebSearchHeader({super.key});

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
    return Padding(
      padding: const EdgeInsets.only(top: 28.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30.0,
            ),
            child: Image.asset(
              "assets/images/google-logo.png",
              height: 30,
            ),
          ),
          SizedBox(
            width: size.width * 0.45,
            height: 44,
            child: TextFormField(
              onFieldSubmitted: (value) => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SearchScreen(query: value, start: 0),
                ),
              ),
              decoration: InputDecoration(
                border: border,
                enabledBorder: border,
                focusedBorder: border,
                filled: true,
                fillColor: searchColor,
                // prefixIcon: Padding(
                //   padding: const EdgeInsets.symmetric(
                //     vertical: 4.0,
                //     horizontal: 15,
                //   ),
                //   child: SvgPicture.asset(
                //     "images/search-icon.svg",
                //     colorFilter:
                //         const ColorFilter.mode(searchBorder, BlendMode.srcIn),
                //   ),
                // ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 4.0,
                    horizontal: 15,
                  ),
                  child: SizedBox(
                    width: 112,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          "images/mic-icon.svg",
                        ),
                        SvgPicture.asset(
                          "images/google-lens-icon.svg",
                          width: 24,
                          height: 24,
                        ),
                        SvgPicture.asset(
                          "images/search-icon.svg",
                          colorFilter: const ColorFilter.mode(
                              blueColor, BlendMode.srcIn),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "images/more-settings.svg",
              colorFilter:
                  const ColorFilter.mode(primaryColor, BlendMode.srcIn),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "images/more-apps.svg",
              colorFilter: const ColorFilter.mode(
                primaryColor,
                BlendMode.srcIn,
              ),
            ),
          ),
          const SizedBox(width: 10.0),
          MaterialButton(
            onPressed: () {},
            color: const Color(0xFF1A73EB),
            height: 42,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(3)),
            ),
            child: const Text(
              "Sign in",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 28.0),
        ],
      ),
    );
  }
}
