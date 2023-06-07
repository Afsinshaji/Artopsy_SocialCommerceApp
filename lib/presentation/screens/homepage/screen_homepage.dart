import 'package:artopsy/presentation/screens/homepage/widgets/trending_stack.dart';
import 'package:flutter/material.dart';

import '../../common_widgets/staggered_gridview_builder.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(
      shrinkWrap: true,
      children: const [
        //  HomePageSection1(),
        TrendingHomePageSection(),
        HomeArtworkListSection()
      ],
    )));
  }
}

class HomePageSection1 extends StatelessWidget {
  const HomePageSection1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class TrendingHomePageSection extends StatelessWidget {
  const TrendingHomePageSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return TrendingStack(size: size);
  }
}

class HomeArtworkListSection extends StatelessWidget {
  const HomeArtworkListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          StaggeredGridViewBuilder(
            isForHomeScreen: true,
           )
          
        ],
      ),
    );
  }
}
