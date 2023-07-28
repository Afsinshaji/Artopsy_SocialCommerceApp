import 'package:artopsy/presentation/screens/categories/screen_each_categories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/colors/colors.dart';
import '../../../core/list/list.dart';
import '../../common_widgets/sliver_appbar.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              pinned: true,
              floating: true,
              delegate: SilverCommonAppbar(
                  onLeadingArrowPressed: () {
                    Navigator.pop(context);
                  }, actions: [])),
          SliverList(
              delegate: SliverChildListDelegate(
                  List.generate(categoryItems.length, (index) {
            return CategoryContainer(
              size:size,
              category: categoryItems[index],
            );
          })))
        ],
      ),
    );
  }
}

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({
    super.key,
    required this.category,
    required this.size,
  });
  final String category;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => EachCategoryScreen(category: category),
            ));
      },
      child: Container(
        alignment: Alignment.center,
        width: size.width,
        height:size.height*0.1,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color:kBlackColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          category,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              letterSpacing: .1,
              fontSize: 22,
              color: kWhiteColor,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
