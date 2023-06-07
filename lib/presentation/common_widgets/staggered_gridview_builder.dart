import 'package:artopsy/presentation/common_widgets/artwork_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/colors/colors.dart';
import '../screens/homepage/widgets/home_artwork_list_widget.dart';

class StaggeredGridViewBuilder extends StatelessWidget {
  const StaggeredGridViewBuilder({
    super.key,
    this.isForHomeScreen = false,
    this.isSearchScreen = false,
  });
  final bool isForHomeScreen;
  final bool isSearchScreen;

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisSpacing: 8,
      mainAxisSpacing: isForHomeScreen ? 16 : 5,
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: isSearchScreen ? 18 + 1 : 18,
      itemBuilder: (context, index) {
        if (isForHomeScreen) {
          return HomeArtWorkListWidget(
            index: index,
          );
        } else if (isSearchScreen) {
          if (index == 0) {
            return Text(
              'FOUND 18 RESLUTS',
              maxLines: 3,
              textAlign: TextAlign.center,
              style: GoogleFonts.bangers(
                textStyle: const TextStyle(
                  overflow: TextOverflow.ellipsis,
                  letterSpacing: 1.3,
                  fontSize: 40,
                  color: kBlackColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            );
          } else {
            return ArtWorkListWidget(index: index - 1);
          }
        } else {
          return ArtWorkListWidget(index: index);
        }
      },
    );
  }
}
