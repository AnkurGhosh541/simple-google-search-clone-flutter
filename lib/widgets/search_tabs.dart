import 'package:flutter/material.dart';

class SearchTabs extends StatelessWidget {
  const SearchTabs({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: 55,
      child: DefaultTabController(
        length: 6,
        child: TabBar(
          isScrollable: true,
          labelStyle: const TextStyle(fontSize: 15),
          unselectedLabelColor: Colors.grey,
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary,
              width: 2,
            ),
          ),
          dividerHeight: 0.5,
          padding: EdgeInsets.symmetric(
            horizontal: size.width < 768 ? 10.0 : 150.0,
          ),
          tabAlignment:
              size.width < 768 ? TabAlignment.start : TabAlignment.start,
          tabs: const [
            Tab(text: "All"),
            Tab(text: "Images"),
            Tab(text: "Videos"),
            Tab(text: "Shopping"),
            Tab(text: "News"),
            Tab(
              child: Row(
                children: [
                  Icon(
                    Icons.more_vert,
                    size: 16,
                  ),
                  Text("More"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
