import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/widgets/language_buttons.dart';
import 'package:google_clone/widgets/mobile/mobile_footer.dart';
import 'package:google_clone/widgets/mobile/mobile_search.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        title: SizedBox(
          width: size.width * 0.34,
          child: const DefaultTabController(
            length: 2,
            child: TabBar(
              labelColor: blueColor,
              unselectedLabelColor: Colors.grey,
              dividerColor: Colors.transparent,
              labelPadding: EdgeInsets.zero,
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                  color: blueColor,
                  width: 2,
                ),
              ),
              tabs: [
                Tab(text: "   ALL   "),
                Tab(text: " IMAGES "),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/images/more-apps.svg",
              colorFilter: const ColorFilter.mode(
                primaryColor,
                BlendMode.srcIn,
              ),
            ),
          ),
          const SizedBox(width: 10),
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
          const SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: size.height * 0.15),
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    MobileSearch(),
                    SizedBox(height: 40),
                    Text("Google offered in:"),
                    SizedBox(height: 15),
                    LanguageButtons(isWeb: false, spacing: 15),
                  ],
                ),
                MobileFooter(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
