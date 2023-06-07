import 'package:artopsy/presentation/common_widgets/staggered_gridview_builder.dart';
import 'package:artopsy/presentation/screens/search/widget/silver_search_appbar.dart';
import 'package:flutter/material.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverPersistentHeader(
            delegate: SilverSearchAppbar(),
            pinned: true,
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) {
              return const StaggeredGridViewBuilder(
                isSearchScreen: true,
              );
            },
            childCount: 1,
            // childCount: 20,
          ))
        ],
      ),
    );
  }
}
