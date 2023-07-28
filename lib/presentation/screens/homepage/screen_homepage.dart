
import 'package:artopsy/core/constants/constants.dart';
import 'package:artopsy/presentation/screens/homepage/widgets/home_app_bar.dart';
import 'package:artopsy/presentation/screens/homepage/widgets/trending_stack.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/colors/colors.dart';
import '../../common_widgets/staggered_gridview_builder.dart';
import '../categories/screen_categories.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        const SliverPersistentHeader(
          delegate: SilverHomeAppbar(),
          pinned: true,
          floating: true,
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              // TextButton(
              //     onPressed: () async {
              //       await FirebaseSignService().signout();
              //       // ignore: use_build_context_synchronously
              //       Navigator.pushAndRemoveUntil(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => LoginScreen(),
              //         ),
              //         ModalRoute.withName('/'),
              //       );
              //     },
              //     child: const Text('LogOut')),
              const TrendingHomePageSection(),
              const HomeArtworkListSection()
            ],
          ),
        ),
      ],
    ));
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
    return Column(
      children: [
        const HomePageText(
          fontSize: 35,
          text: 'Trending',
        ),
        TrendingStack(size: size),
      ],
    );
  }
}

class HomePageText extends StatelessWidget {
  const HomePageText({
    super.key,
    required this.fontSize,
    required this.text,
    this.fontWeight = FontWeight.w700,
    this.letterSpacing = 2.3,
  });
  final double fontSize;
  final String text;
  final FontWeight fontWeight;
  final double letterSpacing;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: TextAlign.center,
        style: GoogleFonts.bangers(
          textStyle: TextStyle(
            overflow: TextOverflow.ellipsis,
            letterSpacing: letterSpacing,
            fontSize: fontSize,
            color: kBlackColor,
            fontWeight: fontWeight,
          ),
        ));
  }
}

class HomeArtworkListSection extends StatelessWidget {
  const HomeArtworkListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          kHeight40,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const HomePageText(
                fontSize: 18,
                text: 'New works for you',
                fontWeight: FontWeight.w100,
                letterSpacing: 1,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const CategoriesScreen(),
                        ));
                  },
                  child: const HomePageText(
                    fontSize: 18,
                    text: 'Categories',
                    fontWeight: FontWeight.w100,
                    letterSpacing: 1,
                  )),
            ],
          ),
          // const StaggeredGridViewBuilder(
          //   isForHomeScreen: true,
          // )
         const HomeExampleScreenStaggeredGridViewBuilder(),
        ],
      ),
    );
  }
}
