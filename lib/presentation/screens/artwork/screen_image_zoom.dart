import 'package:artopsy/core/constants/constants.dart';
import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../common_widgets/sliver_appbar.dart';

class ImageZoomScreen extends StatelessWidget {
  const ImageZoomScreen({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlackColor,
      body: CustomScrollView(slivers: [
        SliverPersistentHeader(
            pinned: true,
            floating: true,
            delegate:
                SilverCommonAppbar(onLeadingArrowPressed: () {}, actions: [])),
        SliverList(
            delegate: SliverChildListDelegate([
          kHeight100,
          Center(
            child: InteractiveViewer(
              child: Image.network(
                imageUrl,
              ),
            ),
          )
        ]))
      ]),
    );
  }
}
