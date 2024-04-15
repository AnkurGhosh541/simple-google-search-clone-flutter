import 'package:flutter/material.dart';
import 'package:google_clone/services/api_service.dart';
import 'package:google_clone/widgets/mobile/mobile_search_header.dart';
import 'package:google_clone/widgets/search_footer.dart';
import 'package:google_clone/widgets/search_result_component.dart';
import 'package:google_clone/widgets/search_tabs.dart';
import 'package:google_clone/widgets/web/web_search_header.dart';

class SearchScreen extends StatelessWidget {
  final String query;
  final int start;
  const SearchScreen({
    super.key,
    required this.query,
    required this.start,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Title(
      color: Colors.blue,
      title: query,
      child: Scaffold(
        body: SingleChildScrollView(
          child: FutureBuilder(
            future: ApiService().fetchData(query: query),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Responsive Header
                    size.width >= 768
                        ? const WebSearchHeader()
                        : const MobileSearchHeader(),
                    // Tabs for news,images,etc.
                    const SearchTabs(),
                    // Search Results
                    Container(
                      padding: EdgeInsets.only(
                        left: size.width >= 768 ? 150 : 12,
                        top: 12,
                      ),
                      child: Text(
                        "About ${snapshot.data!["searchInformation"]["formattedTotalResults"]} results (${snapshot.data!["searchInformation"]["formattedSearchTime"]} seconds)",
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    ListView.builder(
                      padding: const EdgeInsets.only(right: 8),
                      physics: const PageScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: snapshot.data!["items"].length,
                      itemBuilder: (context, index) {
                        final item = snapshot.data!["items"][index];
                        return Padding(
                          padding: EdgeInsets.only(
                            left: size.width >= 768 ? 150 : 12,
                            top: 10,
                          ),
                          child: SearchResultComponent(
                            link: item["formattedUrl"],
                            linkToGo: item["link"],
                            text: item["title"],
                            desc: item["snippet"],
                          ),
                        );
                      },
                    ),
                    // Pagination Buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            if (start != 0) {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => SearchScreen(
                                      query: query, start: start - 1),
                                ),
                              );
                            }
                          },
                          child: const Text(
                            "< Prev",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        const SizedBox(width: 30),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => SearchScreen(
                                    query: query, start: start + 1),
                              ),
                            );
                          },
                          child: const Text(
                            "Next >",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    // Search Footer
                    const SearchFooter(),
                  ],
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ),
    );
  }
}
