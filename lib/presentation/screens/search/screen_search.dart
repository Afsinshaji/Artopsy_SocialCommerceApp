import 'dart:developer';

import 'package:artopsy/presentation/common_widgets/staggered_gridview_builder.dart';
import 'package:artopsy/presentation/screens/search/widget/artist_list_view.dart';
import 'package:artopsy/presentation/screens/search/widget/silver_search_appbar.dart';
import 'package:artopsy/presentation/screens/search/widget/sliver_search_button_row.dart';
import 'package:flutter/material.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  //static ValueNotifier<List> displayList = ValueNotifier([]);
  static ValueNotifier<String> searchingArt = ValueNotifier('');
  static ValueNotifier<bool> isSearchingArtist = ValueNotifier(false);
  static ValueNotifier<String> categoryNotifier = ValueNotifier('');
  static ValueNotifier<String> priceNotifier = ValueNotifier('');
  static ValueNotifier<String> availabilityNotifier = ValueNotifier('');
  static List<ValueNotifier<String>> valueNotifierList = [
    ScreenSearch.categoryNotifier,
    ScreenSearch.priceNotifier,
    ScreenSearch.availabilityNotifier,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverPersistentHeader(
            delegate: SilverSearchAppbar(
              searchList: [],
            ),
            pinned: true,
          ),
          SliverPersistentHeader(
            delegate: SilverSearchButtonRow(valueNotifierList),
            pinned: true,
          ),

          //  SliverList(delegate: SliverChildListDelegate([
          //   ArtistListView(searchingart: searchingArt.value)
          //  ]))

          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) {
              return ValueListenableBuilder(
                  valueListenable: isSearchingArtist,
                  builder: (context, isArtist, child) {
                    return ValueListenableBuilder(
                        valueListenable: searchingArt,
                        builder: (context, string, child) {
                          log(isSearchingArtist.value.toString());
                          if (isSearchingArtist.value == true) {
                            return ArtistListView(
                                searchingart: searchingArt.value);
                          }

                          if (isSearchingArtist.value == false) {
                            return SearchScreenStaggeredGridViewBuilder(
                              searchingart: searchingArt.value,
                              searchCategory:
                                  ScreenSearch.categoryNotifier.value,
                              searchAvailability:
                                  ScreenSearch.availabilityNotifier.value,
                              searchPrice: ScreenSearch.priceNotifier.value,
                            );
                          }

                          return const Text('Error');
                        });
                  });
            },
            childCount: 1,
          )),
        ],
      ),
    );
  }
}
