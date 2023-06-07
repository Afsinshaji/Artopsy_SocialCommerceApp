import 'package:artopsy/presentation/screens/search/widget/background_wave.dart';
import 'package:flutter/material.dart';

import 'Search_screen_bar.dart';

class SilverSearchAppbar extends SliverPersistentHeaderDelegate {
  const SilverSearchAppbar();
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    var adjustedShrinkOffset =
        shrinkOffset > minExtent ? minExtent : shrinkOffset;
    double offset = (minExtent - adjustedShrinkOffset) * 0.5;
    double topPadding = MediaQuery.of(context).padding.top + 16;

    return Stack(
      children: [
        const BackgroundWave(
          height: 280,
        ),
        Positioned(
            top: topPadding + offset,
            left: 16,
            right: 16,
            child: const SearchScreenBar())
      ],
    );
  }

  @override
  double get maxExtent => 280;
  @override
  double get minExtent => 140;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return oldDelegate.maxExtent != maxExtent ||
        oldDelegate.minExtent != minExtent;
  }
}
